const indiaStates = <String>[
  'Andhra Pradesh',
  'Arunachal Pradesh',
  'Assam',
  'Bihar',
  'Chhattisgarh',
  'Goa',
  'Gujarat',
  'Haryana',
  'Himachal Pradesh',
  'Jharkhand',
  'Karnataka',
  'Kerala',
  'Madhya Pradesh',
  'Maharashtra',
  'Manipur',
  'Meghalaya',
  'Mizoram',
  'Nagaland',
  'Odisha',
  'Punjab',
  'Rajasthan',
  'Sikkim',
  'Tamil Nadu',
  'Telangana',
  'Tripura',
  'Uttar Pradesh',
  'Uttarakhand',
  'West Bengal',
  'Andaman and Nicobar Islands',
  'Chandigarh',
  'Dadra and Nagar Haveli and Daman and Diu',
  'Delhi',
  'Jammu and Kashmir',
  'Ladakh',
  'Lakshadweep',
  'Puducherry',
];

const _gstStateCodes = <String, String>{
  '01': 'Jammu and Kashmir',
  '02': 'Himachal Pradesh',
  '03': 'Punjab',
  '04': 'Chandigarh',
  '05': 'Uttarakhand',
  '06': 'Haryana',
  '07': 'Delhi',
  '08': 'Rajasthan',
  '09': 'Uttar Pradesh',
  '10': 'Bihar',
  '11': 'Sikkim',
  '12': 'Arunachal Pradesh',
  '13': 'Nagaland',
  '14': 'Manipur',
  '15': 'Mizoram',
  '16': 'Tripura',
  '17': 'Meghalaya',
  '18': 'Assam',
  '19': 'West Bengal',
  '20': 'Jharkhand',
  '21': 'Odisha',
  '22': 'Chhattisgarh',
  '23': 'Madhya Pradesh',
  '24': 'Gujarat',
  '25': 'Daman and Diu',
  '26': 'Dadra and Nagar Haveli and Daman and Diu',
  '27': 'Maharashtra',
  '28': 'Andhra Pradesh',
  '29': 'Karnataka',
  '30': 'Goa',
  '31': 'Lakshadweep',
  '32': 'Kerala',
  '33': 'Tamil Nadu',
  '34': 'Puducherry',
  '35': 'Andaman and Nicobar Islands',
  '36': 'Telangana',
  '37': 'Andhra Pradesh',
  '38': 'Ladakh',
  '97': 'Other Territory',
};

String normalizeGstin(String value) => value.trim().toUpperCase();

String? stateFromGstin(String? gstin) {
  if (gstin == null) return null;
  final normalized = normalizeGstin(gstin);
  if (!_hasGstinStructure(normalized) || !_hasValidGstinChecksum(normalized)) {
    return null;
  }
  return _gstStateCodes[normalized.substring(0, 2)];
}

bool isValidGstin(String? gstin) => stateFromGstin(gstin) != null;

/// Returns a GST state code for a display state name.
///
/// Andhra Pradesh has historical code 28 and current registrations commonly
/// use 37. We use 37 for generated reports; a source GSTIN remains
/// authoritative whenever one is present.
String? gstStateCodeFromState(String? state) {
  if (state == null || state.trim().isEmpty) return null;
  final normalized = state.trim().toLowerCase();
  if (normalized == 'andhra pradesh') return '37';
  for (final entry in _gstStateCodes.entries) {
    if (entry.value.toLowerCase() == normalized) return entry.key;
  }
  return null;
}

bool _hasGstinStructure(String value) {
  return RegExp(r'^\d{2}[A-Z]{5}\d{4}[A-Z][A-Z0-9]Z[A-Z0-9]$').hasMatch(value);
}

bool _hasValidGstinChecksum(String value) {
  const alphabet = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  var sum = 0;
  for (var index = 0; index < 14; index++) {
    final code = alphabet.indexOf(value[index]);
    if (code < 0) return false;
    final product = code * (index.isEven ? 1 : 2);
    sum += (product ~/ 36) + (product % 36);
  }
  final expected = alphabet[(36 - (sum % 36)) % 36];
  return value[14] == expected;
}
