import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/services/settings_service.dart';
import '../../../../core/utils/india_gst.dart';
import '../../../../core/widgets/responsive_scaffold.dart';


const _countryCurrencies = {
  'India': '₹',
  'United States': r'$',
  'United Kingdom': '£',
  'European Union': '€',
  'United Arab Emirates': 'د.إ',
  'Bangladesh': '৳',
  'Nepal': 'रू',
  'Australia': r'A$',
  'Canada': r'C$',
  'Singapore': r'S$',
};

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  late TextEditingController _nameController;
  late TextEditingController _addressController;
  late TextEditingController _phoneController;
  late TextEditingController _taxIdController;
  late TextEditingController _currencyController;
  late TextEditingController _taxRateController;
  late String _selectedCountry;
  late String _selectedBusinessState;
  String _logoPath = '';
  bool _isPickingLogo = false;

  @override
  void initState() {
    super.initState();
    final settings = ref.read(settingsProvider);
    _nameController = TextEditingController(text: settings.businessName);
    _addressController = TextEditingController(text: settings.businessAddress);
    _phoneController = TextEditingController(text: settings.businessPhone);
    _taxIdController = TextEditingController(text: settings.taxId);
    _currencyController = TextEditingController(text: settings.currencySymbol);
    _taxRateController =
        TextEditingController(text: settings.defaultTaxRate.toString());
    _selectedCountry = _countryCurrencies.containsKey(settings.country)
        ? settings.country
        : 'India';
    _selectedBusinessState = indiaStates.contains(settings.businessState)
        ? settings.businessState
        : indiaStates.first;
    _logoPath = settings.logoPath;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _phoneController.dispose();
    _taxIdController.dispose();
    _currencyController.dispose();
    _taxRateController.dispose();
    super.dispose();
  }

  Future<void> _pickLogo() async {
    setState(() => _isPickingLogo = true);
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: false,
      );
      final selectedPath = result?.files.single.path;
      if (selectedPath == null) return;

      final documentsDirectory = await getApplicationDocumentsDirectory();
      final extension =
          selectedPath.contains('.') ? selectedPath.split('.').last : 'png';
      final destination =
          File('${documentsDirectory.path}/business_logo.$extension');
      await File(selectedPath).copy(destination.path);
      setState(() => _logoPath = destination.path);
    } finally {
      if (mounted) setState(() => _isPickingLogo = false);
    }
  }

  void _removeLogo() {
    if (_logoPath.isNotEmpty) {
      final file = File(_logoPath);
      if (file.existsSync()) file.deleteSync();
    }
    setState(() => _logoPath = '');
  }

  void _save() {
    final newSettings = AppSettings(
      businessName: _nameController.text.trim(),
      businessAddress: _addressController.text.trim(),
      businessPhone: _phoneController.text.trim(),
      taxId: _taxIdController.text.trim(),
      businessState: _selectedBusinessState,
      country: _selectedCountry,
      currencySymbol: _currencyController.text.trim().isEmpty
          ? '₹'
          : _currencyController.text.trim(),
      defaultTaxRate: double.tryParse(_taxRateController.text) ?? 5.0,
      logoPath: _logoPath,
    );

    ref.read(settingsProvider.notifier).updateSettings(newSettings);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
          content: Text('Settings saved successfully!'),
          backgroundColor: Colors.green),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      currentIndex: 6,
      title: 'Business & App Settings',
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            const Text(
              'Business Branding & Invoice Details',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryDark),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                  labelText: 'Business Name', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _addressController,
              decoration: const InputDecoration(
                  labelText: 'Business Address', border: OutlineInputBorder()),
              maxLines: 2,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(
                  labelText: 'Phone Number', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _taxIdController,
              onChanged: (value) {
                final detectedState = stateFromGstin(value);
                if (detectedState != null && mounted) {
                  setState(() => _selectedBusinessState = detectedState);
                }
              },
              decoration: const InputDecoration(
                  labelText: 'Tax ID / GSTIN', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: _selectedBusinessState,
              isExpanded: true,
              decoration: const InputDecoration(
                  labelText: 'Business State',
                  hintText: 'Select state',
                  border: OutlineInputBorder()),
              items: indiaStates
                  .map((state) =>
                      DropdownMenuItem(value: state, child: Text(state)))
                  .toList(),
              onChanged: (state) {
                if (state != null) {
                  setState(() => _selectedBusinessState = state);
                }
              },
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: _selectedCountry,
              isExpanded: true,
              decoration: const InputDecoration(
                  labelText: 'Country', border: OutlineInputBorder()),
              items: _countryCurrencies.keys
                  .map((country) =>
                      DropdownMenuItem(value: country, child: Text(country)))
                  .toList(),
              onChanged: (country) {
                if (country == null) return;
                setState(() {
                  _selectedCountry = country;
                  _currencyController.text = _countryCurrencies[country]!;
                });
              },
            ),
            const SizedBox(height: 12),
            _buildLogoPicker(),
            const SizedBox(height: 24),
            const Text(
              'Financial Preferences',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryDark),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _currencyController,
              decoration: const InputDecoration(
                  labelText: 'Currency Symbol (editable)',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _taxRateController,
              decoration: const InputDecoration(
                  labelText: 'Default Tax Rate (%)',
                  border: OutlineInputBorder()),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: _save,
                child: const Text('Save Settings',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
);
  }

  Widget _buildLogoPicker() {
    final hasLogo = _logoPath.isNotEmpty && File(_logoPath).existsSync();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Invoice Logo',
            style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Row(
          children: [
            Container(
              width: 76,
              height: 76,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border),
                  borderRadius: BorderRadius.circular(10)),
              child: hasLogo
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(File(_logoPath), fit: BoxFit.contain))
                  : const Icon(Icons.image_outlined, color: AppColors.textHint),
            ),
            const SizedBox(width: 12),
            OutlinedButton.icon(
              onPressed: _isPickingLogo ? null : _pickLogo,
              icon: const Icon(Icons.upload_file),
              label: Text(_isPickingLogo ? 'Selecting...' : 'Upload logo'),
            ),
            if (hasLogo) ...[
              const SizedBox(width: 8),
              IconButton(
                  tooltip: 'Remove logo',
                  onPressed: _removeLogo,
                  icon: const Icon(Icons.delete_outline)),
            ],
          ],
        ),
      ],
    );
  }
}
