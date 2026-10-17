import 'dart:convert';
import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

class AppSettings {
  final String businessName;
  final String businessAddress;
  final String businessPhone;
  final String taxId;
  final String businessState;
  final String country;
  final String currencySymbol;
  final double defaultTaxRate;
  final String logoPath;

  final String gstRegistrationType; // regular, composition, unregistered
  final double compositionTaxRate; // 1% or 0.5%
  final String invoicePrefix;
  final String invoiceSuffix;
  final bool invoiceIncludeYear;
  final int invoicePadLength;
  final String invoiceSeparator;

  AppSettings({
    this.businessName = 'INVOKHATA RETAIL',
    this.businessAddress = 'Main Market, City',
    this.businessPhone = '+91 9876543210',
    this.taxId = '',
    this.businessState = 'Assam',
    this.country = 'India',
    this.currencySymbol = '₹',
    this.defaultTaxRate = 5.0,
    this.logoPath = '',
    this.gstRegistrationType = 'regular',
    this.compositionTaxRate = 1.0,
    this.invoicePrefix = 'INV',
    this.invoiceSuffix = '',
    this.invoiceIncludeYear = true,
    this.invoicePadLength = 4,
    this.invoiceSeparator = '-',
  });

  Map<String, dynamic> toJson() => {
        'businessName': businessName,
        'businessAddress': businessAddress,
        'businessPhone': businessPhone,
        'taxId': taxId,
        'businessState': businessState,
        'country': country,
        'currencySymbol': currencySymbol,
        'defaultTaxRate': defaultTaxRate,
        'logoPath': logoPath,
        'gstRegistrationType': gstRegistrationType,
        'compositionTaxRate': compositionTaxRate,
        'invoicePrefix': invoicePrefix,
        'invoiceSuffix': invoiceSuffix,
        'invoiceIncludeYear': invoiceIncludeYear,
        'invoicePadLength': invoicePadLength,
        'invoiceSeparator': invoiceSeparator,
      };

  factory AppSettings.fromJson(Map<String, dynamic> json) => AppSettings(
        businessName: json['businessName'] ?? 'INVOKHATA RETAIL',
        businessAddress: json['businessAddress'] ?? 'Main Market, City',
        businessPhone: json['businessPhone'] ?? '+91 9876543210',
        taxId: json['taxId'] ?? '',
        businessState: json['businessState'] ?? 'Assam',
        country: json['country'] ?? 'India',
        currencySymbol: json['currencySymbol'] ?? '₹',
        defaultTaxRate: (json['defaultTaxRate'] as num?)?.toDouble() ?? 5.0,
        logoPath: json['logoPath'] ?? '',
        gstRegistrationType: json['gstRegistrationType'] ?? 'regular',
        compositionTaxRate:
            (json['compositionTaxRate'] as num?)?.toDouble() ?? 1.0,
        invoicePrefix: json['invoicePrefix'] ?? 'INV',
        invoiceSuffix: json['invoiceSuffix'] ?? '',
        invoiceIncludeYear: json['invoiceIncludeYear'] ?? true,
        invoicePadLength: json['invoicePadLength'] ?? 4,
        invoiceSeparator: json['invoiceSeparator'] ?? '-',
      );

  AppSettings copyWith({
    String? businessName,
    String? businessAddress,
    String? businessPhone,
    String? taxId,
    String? businessState,
    String? country,
    String? currencySymbol,
    double? defaultTaxRate,
    String? logoPath,
    String? gstRegistrationType,
    double? compositionTaxRate,
    String? invoicePrefix,
    String? invoiceSuffix,
    bool? invoiceIncludeYear,
    int? invoicePadLength,
    String? invoiceSeparator,
  }) {
    return AppSettings(
      businessName: businessName ?? this.businessName,
      businessAddress: businessAddress ?? this.businessAddress,
      businessPhone: businessPhone ?? this.businessPhone,
      taxId: taxId ?? this.taxId,
      businessState: businessState ?? this.businessState,
      country: country ?? this.country,
      currencySymbol: currencySymbol ?? this.currencySymbol,
      defaultTaxRate: defaultTaxRate ?? this.defaultTaxRate,
      logoPath: logoPath ?? this.logoPath,
      gstRegistrationType: gstRegistrationType ?? this.gstRegistrationType,
      compositionTaxRate: compositionTaxRate ?? this.compositionTaxRate,
      invoicePrefix: invoicePrefix ?? this.invoicePrefix,
      invoiceSuffix: invoiceSuffix ?? this.invoiceSuffix,
      invoiceIncludeYear: invoiceIncludeYear ?? this.invoiceIncludeYear,
      invoicePadLength: invoicePadLength ?? this.invoicePadLength,
      invoiceSeparator: invoiceSeparator ?? this.invoiceSeparator,
    );
  }
}

final settingsProvider =
    StateNotifierProvider<SettingsNotifier, AppSettings>((ref) {
  return SettingsNotifier();
});

class SettingsNotifier extends StateNotifier<AppSettings> {
  SettingsNotifier() : super(AppSettings()) {
    _loadSettings();
  }

  Future<File> _getFile() async {
    final dir = await getApplicationDocumentsDirectory();
    return File('${dir.path}/app_settings.json');
  }

  Future<void> _loadSettings() async {
    try {
      final file = await _getFile();
      if (await file.exists()) {
        final contents = await file.readAsString();
        final data = jsonDecode(contents) as Map<String, dynamic>;
        state = AppSettings.fromJson(data);
      }
    } catch (_) {}
  }

  Future<void> updateSettings(AppSettings newSettings) async {
    try {
      state = newSettings;
      final file = await _getFile();
      await file.writeAsString(jsonEncode(newSettings.toJson()));
    } catch (_) {}
  }
}
