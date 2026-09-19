import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class AddItemTopSection extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: nameController,
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
                  onTap: onPickUnit,
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
                      selectedUnit,
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
          TextFormField(
            controller: barcodeController,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
            decoration: InputDecoration(
              labelText: 'Item Code',
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
                padding: const EdgeInsets.only(right: 4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      tooltip: 'Scan barcode with camera',
                      icon: const Icon(Icons.qr_code_scanner,
                          color: AppColors.primary, size: 22),
                      visualDensity: VisualDensity.compact,
                      onPressed: onScanBarcode,
                    ),
                    const SizedBox(width: 4),
                    InkWell(
                      onTap: onGenerateBarcode,
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
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          InkWell(
            onTap: onPickCategory,
            child: IgnorePointer(
              child: TextFormField(
                controller: categoryController,
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
          TextFormField(
            controller: hsnController,
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
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
