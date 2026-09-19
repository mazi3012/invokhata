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

  AppSettings({
    this.businessName = 'INVOKHATA RETAIL',
    this.businessAddress = 'Main Market, City',
    this.businessPhone = '+91 9876543210',
    this.taxId = 'GSTIN123456789',
    this.businessState = 'Assam',
    this.country = 'India',
    this.currencySymbol = '₹',
    this.defaultTaxRate = 5.0,
    this.logoPath = '',
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
      };

  factory AppSettings.fromJson(Map<String, dynamic> json) => AppSettings(
        businessName: json['businessName'] ?? 'INVOKHATA RETAIL',
        businessAddress: json['businessAddress'] ?? 'Main Market, City',
        businessPhone: json['businessPhone'] ?? '+91 9876543210',
        taxId: json['taxId'] ?? 'GSTIN123456789',
        businessState: json['businessState'] ?? 'Assam',
        country: json['country'] ?? 'India',
        currencySymbol: json['currencySymbol'] ?? '₹',
        defaultTaxRate: (json['defaultTaxRate'] as num?)?.toDouble() ?? 5.0,
        logoPath: json['logoPath'] ?? '',
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
