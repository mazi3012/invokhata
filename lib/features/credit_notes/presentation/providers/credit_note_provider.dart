import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/schemas/credit_note.dart';
import '../../data/credit_note_repository.dart';

final creditNoteRepositoryProvider =
    Provider((ref) => CreditNoteRepository());

final creditNoteProvider = StateNotifierProvider<CreditNoteNotifier,
    AsyncValue<List<CreditNote>>>((ref) {
  return CreditNoteNotifier(ref.watch(creditNoteRepositoryProvider));
});

class CreditNoteNotifier
    extends StateNotifier<AsyncValue<List<CreditNote>>> {
  final CreditNoteRepository _repository;

  CreditNoteNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadNotes();
  }

  Future<void> loadNotes() async {
    try {
      state = const AsyncValue.loading();
      final notes = await _repository.getAllNotes();
      state = AsyncValue.data(notes);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> addNote(CreditNote note) async {
    try {
      await _repository.createNoteAndProcess(note);
      await loadNotes();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> deleteNote(int id) async {
    try {
      await _repository.deleteNote(id);
      await loadNotes();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<String> getNextNoteNumber({String noteType = 'credit_note'}) async {
    return await _repository.nextNoteNumber(noteType: noteType);
  }
}