/// Reusable Flutter form validators for the INVOKHATA app.
///
/// Following the `FormFieldValidator<String>` contract, every function returns
/// `null` when the value is valid and a user-facing error message otherwise.
library;

/// Validates that [value] parses as a non-negative number.
///
/// Set [allowZero] to `false` to require a strictly positive value.
String? positiveNumberValidator(
  String? value, {
  String fieldName = 'Amount',
  bool allowZero = true,
}) {
  if (value == null || value.trim().isEmpty) {
    return '$fieldName is required';
  }
  final parsed = double.tryParse(value.trim());
  if (parsed == null || !parsed.isFinite) {
    return 'Enter a valid number';
  }
  if (parsed < 0) {
    return '$fieldName cannot be negative';
  }
  if (parsed == 0 && !allowZero) {
    return '$fieldName must be greater than 0';
  }
  return null;
}

/// Validates that [value] parses as a whole number >= [min].
String? positiveIntegerValidator(
  String? value, {
  String fieldName = 'Quantity',
  int min = 1,
}) {
  if (value == null || value.trim().isEmpty) {
    return '$fieldName is required';
  }
  final parsed = int.tryParse(value.trim());
  if (parsed == null) {
    return 'Enter a whole number';
  }
  if (parsed < min) {
    return '$fieldName must be at least $min';
  }
  return null;
}