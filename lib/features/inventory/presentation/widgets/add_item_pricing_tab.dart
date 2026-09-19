import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/validators.dart';

class AddItemPricingTab extends StatelessWidget {
  final TextEditingController salesPriceController;
  final TextEditingController discountController;
  final TextEditingController wholesalePriceController;
  final TextEditingController purchasePriceController;
  final String salesTaxType;
  final String discountType;
  final String purchaseTaxType;
  final bool showWholesaleField;
  final Map<String, dynamic> selectedTax;
  final List<Map<String, dynamic>> taxRates;
  final ValueChanged<String> onSalesTaxTypeChanged;
  final ValueChanged<String> onDiscountTypeChanged;
  final ValueChanged<String> onPurchaseTaxTypeChanged;
  final VoidCallback onToggleWholesale;
  final ValueChanged<Map<String, dynamic>> onTaxChanged;

  const AddItemPricingTab({
    super.key,
    required this.salesPriceController,
    required this.discountController,
    required this.wholesalePriceController,
    required this.purchasePriceController,
    required this.salesTaxType,
    required this.discountType,
    required this.purchaseTaxType,
    required this.showWholesaleField,
    required this.selectedTax,
    required this.taxRates,
    required this.onSalesTaxTypeChanged,
    required this.onDiscountTypeChanged,
    required this.onPurchaseTaxTypeChanged,
    required this.onToggleWholesale,
    required this.onTaxChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sale Price',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: salesPriceController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            validator: (val) =>
                positiveNumberValidator(val, fieldName: 'Sale price'),
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
            decoration: InputDecoration(
              labelText: 'Sale Price',
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
              suffixIcon: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: salesTaxType,
                  icon: const Icon(Icons.keyboard_arrow_down,
                      color: AppColors.textSecondary),
                  items: const [
                    DropdownMenuItem(
                        value: 'Without Tax', child: Text('Without Tax')),
                    DropdownMenuItem(
                        value: 'With Tax', child: Text('With Tax')),
                  ],
                  onChanged: (val) =>
                      val != null ? onSalesTaxTypeChanged(val) : null,
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          TextFormField(
            controller: discountController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            validator: (val) => val == null || val.trim().isEmpty
                ? null
                : positiveNumberValidator(val, fieldName: 'Discount'),
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
            decoration: InputDecoration(
              labelText: 'Disc. On Sale Price',
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
              suffixIcon: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: discountType,
                  icon: const Icon(Icons.keyboard_arrow_down,
                      color: AppColors.textSecondary),
                  items: const [
                    DropdownMenuItem(
                        value: 'Percentage', child: Text('Percentage')),
                    DropdownMenuItem(value: 'Amount', child: Text('Amount')),
                  ],
                  onChanged: (val) =>
                      val != null ? onDiscountTypeChanged(val) : null,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: onToggleWholesale,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                children: [
                  Icon(
                    showWholesaleField
                        ? Icons.remove_circle_outline
                        : Icons.add,
                    color: AppColors.primary,
                    size: 18,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    showWholesaleField
                        ? 'Remove Wholesale Price'
                        : 'Add Wholesale Price',
                    style: const TextStyle(
                      color: AppColors.primaryDark,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppColors.accentContainer,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.workspace_premium,
                        size: 14, color: AppColors.accent),
                  ),
                ],
              ),
            ),
          ),
          if (showWholesaleField) ...[
            const SizedBox(height: 10),
            TextFormField(
              controller: wholesalePriceController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              validator: (val) => val == null || val.trim().isEmpty
                  ? null
                  : positiveNumberValidator(val, fieldName: 'Wholesale price'),
              decoration: InputDecoration(
                labelText: 'Wholesale Price',
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
              ),
            ),
          ],
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 12),
          const Text(
            'Purchase Price',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: purchasePriceController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            validator: (val) =>
                positiveNumberValidator(val, fieldName: 'Purchase price'),
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
            decoration: InputDecoration(
              labelText: 'Purchase Price',
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
              suffixIcon: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: purchaseTaxType,
                  icon: const Icon(Icons.keyboard_arrow_down,
                      color: AppColors.textSecondary),
                  items: const [
                    DropdownMenuItem(
                        value: 'Without Tax', child: Text('Without Tax')),
                    DropdownMenuItem(
                        value: 'With Tax', child: Text('With Tax')),
                  ],
                  onChanged: (val) =>
                      val != null ? onPurchaseTaxTypeChanged(val) : null,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 12),
          const Text(
            'Taxes',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<Map<String, dynamic>>(
            initialValue: selectedTax,
            menuMaxHeight: 350,
            decoration: InputDecoration(
              labelText: 'Tax Rate',
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
            ),
            items: taxRates.map((tax) {
              final double rate = (tax['rate'] as num).toDouble();
              return DropdownMenuItem<Map<String, dynamic>>(
                value: tax,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(tax['name'] as String,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                    Text(
                      '${rate.toStringAsFixed(rate.truncateToDouble() == rate ? 0 : 2)}%',
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.textSecondary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
            onChanged: (val) => val != null ? onTaxChanged(val) : null,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
