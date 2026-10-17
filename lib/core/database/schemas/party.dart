import 'package:isar/isar.dart';

part 'party.g.dart';

@collection
class Party {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  late String name;

  @Index()
  String? phoneNumber;

  String? gstin;
  String? state;
  String? address;
  String? email;

  // 'customer' or 'supplier'
  String partyType = 'customer';

  // Positive = Customer owes money to shop (Due)
  // Negative = Shop owes money to supplier
  double outstandingBalance = 0.0;

  // Opening balance as-of date
  DateTime? balanceAsOfDate;

  // GST registration type: 'Unregistered/Consumer', 'Registered - Regular', 'Registered - Composite'
  String gstType = 'Unregistered/Consumer';

  // Credit limit for the party (premium feature)
  double creditLimit = 0.0;

  DateTime createdAt = DateTime.now();
}
