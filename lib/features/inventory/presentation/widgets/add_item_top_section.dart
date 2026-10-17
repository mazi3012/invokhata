import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import 'hsn_codes_list.dart';

class AddItemTopSection extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController barcodeController;
  final TextEditingController categoryController;
  final TextEditingController hsnController;
  final String selectedUnit;
  final VoidCallback onPickUnit;
  final VoidCallback onGenerateBarcode;
  final VoidCallback onScanBarcode;
  final VoidCallback onPickCategory;

  const AddItemTopSection({
    super.key,
    required this.nameController,
    required this.barcodeController,
    required this.categoryController,
    required this.hsnController,
    required this.selectedUnit,
    required this.onPickUnit,
    required this.onGenerateBarcode,
    required this.onScanBarcode,
    required this.onPickCategory,
  });

  @override
  State<AddItemTopSection> createState() => _AddItemTopSectionState();
}

class _AddItemTopSectionState extends State<AddItemTopSection> {
  late List<Map<String, String>> _allHsnCodes;
  List<Map<String, String>> _filteredHsnCodes = [];
  bool _showDropdown = false;
  late final TextEditingController _hsnController;

  @override
  void initState() {
    super.initState();
    _allHsnCodes = List<Map<String, String>>.from(commonHsnCodes);
    _hsnController = widget.hsnController;
    _hsnController.addListener(_onHsnChanged);
  }

  @override
  void dispose() {
    _hsnController.removeListener(_onHsnChanged);
    super.dispose();
  }

  void _onHsnChanged() {
    final query = _hsnController.text.trim();
    if (query.isEmpty) {
      setState(() {
        _filteredHsnCodes = [];
        _showDropdown = false;
      });
    } else {
      final filtered = _allHsnCodes.where((code) {
        final codeStr = code['code'] ?? '';
        final descStr = code['description'] ?? '';
        final lowerQuery = query.toLowerCase();
        return codeStr.contains(lowerQuery) ||
            descStr.toLowerCase().contains(lowerQuery);
      }).toList();
      setState(() {
        _filteredHsnCodes = filtered;
        _showDropdown = filtered.isNotEmpty;
      });
    }
  }

  void _selectHsnCode(Map<String, String> hsnCode) {
    _hsnController.text = hsnCode['code'] ?? '';
    setState(() {
      _showDropdown = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: widget.nameController,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimary,
              ),
            decoration: InputDecoration(
              label: RichText(
                text: const TextSpan(
                  text: 'Item Name ',
                  style: TextStyle(
                    color: AppColors.primaryDark,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: '*',
                      style: TextStyle(
                        color: AppColors.danger,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.border),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.border),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: AppColors.primary, width: 1.8),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: widget.onPickUnit,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.primaryContainer,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: AppColors.primary.withValues(alpha: 0.3)),
                    ),
                    child: Text(
                      widget.selectedUnit,
                      style: const TextStyle(
                        color: AppColors.primaryDarker,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            validator: (val) => val == null || val.trim().isEmpty
                ? 'Item name is required'
                : null,
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: TextFormField(
                  controller: widget.barcodeController,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
                  decoration: InputDecoration(
                    labelText: 'Barcode',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: AppColors.border),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: AppColors.border),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: AppColors.primary, width: 1.8),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                    suffixIcon: InkWell(
                      onTap: widget.onScanBarcode,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
                        decoration: BoxDecoration(
                          color: AppColors.primaryContainer,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: AppColors.primary.withValues(alpha: 0.3)),
                        ),
                        child: const Text(
                          'Scan Code',
                          style: TextStyle(
                            color: AppColors.primaryDarker,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    InkWell(
                      onTap: widget.onGenerateBarcode,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
                        decoration: BoxDecoration(
                          color: AppColors.primaryContainer,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: AppColors.primary.withValues(alpha: 0.3)),
                        ),
                        child: const Text(
                          'Assign Code',
                          style: TextStyle(
                            color: AppColors.primaryDarker,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    InkWell(
                      onTap: widget.onScanBarcode,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
                        decoration: BoxDecoration(
                          color: AppColors.primaryContainer,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: AppColors.primary.withValues(alpha: 0.3)),
                        ),
                        child: const Text(
                          'Scan Code',
                          style: TextStyle(
                            color: AppColors.primaryDarker,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          InkWell(
            onTap: widget.onPickCategory,
            child: IgnorePointer(
              child: TextFormField(
                controller: widget.categoryController,
                style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimary,
              ),
                decoration: InputDecoration(
                  labelText: 'Item Category',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.border),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.border),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: AppColors.primary, width: 1.8),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  suffixIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.textSecondary,
                    size: 28,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _hsnController,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
                decoration: InputDecoration(
                  labelText: 'HSN/SAC Code',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.border),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.border),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: AppColors.primary, width: 1.8),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: AppColors.primary,
                    size: 24,
                  ),
                ),
              ),
              if (_showDropdown && _filteredHsnCodes.isNotEmpty)
                Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(maxHeight: 200),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _filteredHsnCodes.length,
                    itemBuilder: (context, index) {
                      final hsn = _filteredHsnCodes[index];
                      return InkWell(
                        onTap: () => _selectHsnCode(hsn),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 8),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  hsn['code'] ?? '',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  hsn['description'] ?? '',
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
