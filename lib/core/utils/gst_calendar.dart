class GstCalendar {
  // Calculate the due date for GSTR-1
  static DateTime calculateGstr1DueDate(DateTime month) {
    final lastDay = DateTime(month.year, month.month + 1, 0);
    return DateTime(lastDay.year, lastDay.month, 11); // 11th of the next month
  }

  // Calculate the due date for GSTR-3B
  static DateTime calculateGstr3bDueDate(DateTime month) {
    final lastDay = DateTime(month.year, month.month + 1, 0);
    return DateTime(lastDay.year, lastDay.month, 20); // 20th of the next month
  }

  // Calculate the due date for annual return
  static DateTime calculateAnnualReturnDueDate(DateTime year) {
    return DateTime(year.year, 3, 31); // 31st March of the next year
  }
}