import 'package:isar/isar.dart';

part 'tds_entry.g.dart';

@collection
class TdsEntry {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String tdsNumber; // TDS-NNNN-YYYY

  int? partyId;
  String partyName = '';
  String? partyGstin;

  DateTime tdsDate = DateTime.now();
  String tdsSection = ''; // Section under which TDS is deducted
  double tdsAmount = 0.0;
  double taxableAmount = 0.0;
  double tdsRate = 0.0;

  String? remarks;
}