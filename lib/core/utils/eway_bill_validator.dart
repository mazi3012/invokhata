class EWayBillValidator {
  // Validation for basic E-Way Bill fields
  static String? validateBillNumber(String? billNumber) {
    if (billNumber == null || billNumber.isEmpty) {
      return 'E-Way Bill Number cannot be empty';
    } else if (billNumber.length != 12 || int.tryParse(billNumber) == null) {
      return 'E-Way Bill Number must be a 12-digit number';
    }
    return null;
  }

  static String? validateTransportDetails(String? transporterName, String? vehicleNumber) {
    if (transporterName == null || transporterName.isEmpty) {
      return 'Transporter Name cannot be empty';
    }
    if (vehicleNumber == null || vehicleNumber.isEmpty) {
      return 'Vehicle Number cannot be empty';
    }
    return null;
  }

  static String? validateDistance(double? distance) {
    if (distance == null || distance <= 0) {
      return 'Distance must be greater than 0';
    }
    return null;
  }

  static String? validateDates(DateTime? startDate, DateTime? validUpto) {
    if (startDate == null || validUpto == null) {
      return 'Start Date and Valid Until Date cannot be null';
    }
    if (validUpto.isBefore(startDate)) {
      return 'Valid Until Date must be after the E-Way Bill Date';
    }
    return null;
  }
}