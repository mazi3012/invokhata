import 'package:isar/isar.dart';
import '../../../core/database/isar_service.dart';
import '../../../core/database/schemas/credit_note.dart';
import '../../../core/database/schemas/item.dart';
import '../../../core/database/schemas/party.dart';

class CreditNoteRepository {
  final Isar _isar;

  CreditNoteRepository({Isar? isar}) : _isar = isar ?? IsarService.isar;

  /// Generates the next note number: CN-YYYY-NNNN or DN-YYYY-NNNN
  Future<String> nextNoteNumber({String noteType = 'credit_note'}) async {
    final year = DateTime.now().year;
    final prefix = noteType == 'debit_note' ? 'DN-$year-' : 'CN-$year-';

    final latest = await _isar.creditNotes
        .filter()
        .noteNumberStartsWith(prefix)
        .sortByNoteSeqDesc()
        .findFirst();

    final seq = (latest?.noteSeq ?? 0) + 1;
    return '$prefix${seq.toString().padLeft(4, '0')}';
  }

  /// Creates a credit/debit note and applies stock/party balance adjustments
  Future<void> createNoteAndProcess(CreditNote note) async {
    await _isar.writeTxn(() async {
      await _isar.creditNotes.put(note);

      // Adjust stock if sales return (credit note) or purchase return (debit note)
      final isCredit = note.noteType == 'credit_note';
      final isReturn = note.reason == 'sales_return' || note.reason == 'purchase_return';

      if (isReturn) {
        for (final line in note.items) {
          if (line.itemId != null && line.quantity > 0) {
            final dbItem = await _isar.items.get(line.itemId!);
            if (dbItem != null) {
              if (isCredit) {
                // Sales return: items returned back into stock
                dbItem.stockQuantity += line.quantity;
              } else {
                // Debit note / purchase return: items shipped back out of stock
                dbItem.stockQuantity -= line.quantity;
                if (dbItem.stockQuantity < 0) dbItem.stockQuantity = 0;
              }
              await _isar.items.put(dbItem);
            }
          }
        }
      }

      // Party balance adjustment
      if (note.partyId != null && note.totalAmount > 0) {
        final party = await _isar.partys.get(note.partyId!);
        if (party != null) {
          if (isCredit) {
            // Customer credit: reduces customer debt
            party.outstandingBalance -= note.totalAmount;
          } else {
            // Debit note: increases amount receivable
            party.outstandingBalance += note.totalAmount;
          }
          await _isar.partys.put(party);
        }
      }
    });
  }

  Future<List<CreditNote>> getAllNotes() async {
    return await _isar.creditNotes.where().sortByNoteDateDesc().findAll();
  }

  Future<CreditNote?> getNoteById(int id) async {
    return await _isar.creditNotes.get(id);
  }

  Future<List<CreditNote>> getNotesByParty(int partyId) async {
    return await _isar.creditNotes
        .filter()
        .partyIdEqualTo(partyId)
        .sortByNoteDateDesc()
        .findAll();
  }

  Future<void> deleteNote(int id) async {
    final note = await _isar.creditNotes.get(id);
    if (note == null) return;

    await _isar.writeTxn(() async {
      final isCredit = note.noteType == 'credit_note';
      final isReturn = note.reason == 'sales_return' || note.reason == 'purchase_return';

      if (isReturn) {
        for (final line in note.items) {
          if (line.itemId != null && line.quantity > 0) {
            final dbItem = await _isar.items.get(line.itemId!);
            if (dbItem != null) {
              if (isCredit) {
                dbItem.stockQuantity -= line.quantity;
                if (dbItem.stockQuantity < 0) dbItem.stockQuantity = 0;
              } else {
                dbItem.stockQuantity += line.quantity;
              }
              await _isar.items.put(dbItem);
            }
          }
        }
      }

      if (note.partyId != null && note.totalAmount > 0) {
        final party = await _isar.partys.get(note.partyId!);
        if (party != null) {
          if (isCredit) {
            party.outstandingBalance += note.totalAmount;
          } else {
            party.outstandingBalance -= note.totalAmount;
          }
          await _isar.partys.put(party);
        }
      }

      await _isar.creditNotes.delete(id);
    });
  }
}