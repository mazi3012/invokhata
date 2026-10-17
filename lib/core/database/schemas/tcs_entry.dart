import 'package:isar/isar.dart';

part 'tcs_entry.g.dart';

@collection
class TcsEntry {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String tcsNumber; // TCS-NNNN-YYYY

  int? partyId;
  String partyName = '';
  String? partyGstin;

  DateTime tcsDate = DateTime.now();
  String tcsSection = ''; // Section under which TCS is collected
  double tcsAmount = 0.0;
  double taxableAmount = 0.0;
  double tcsRate = 0.0;

  String? remarks;
}