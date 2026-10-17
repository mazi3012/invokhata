import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/validators.dart';

class AddItemStockTab extends StatelessWidget {
  final TextEditingController openingStockController;
  final TextEditingController asOfDateController;
  final TextEditingController atPriceUnitController;
  final TextEditingController minStockController;
  final TextEditingController locationController;
  final VoidCallback onPickDate;

  const AddItemStockTab({
    super.key,
    required this.openingStockController,
    required this.asOfDateController,
    required this.atPriceUnitController,
    required this.minStockController,
    required this.locationController,
    required this.onPickDate,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Opening Stock (i)
          TextFormField(
            controller: openingStockController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            validator: (val) => val == null || val.trim().isEmpty
                ? null
                : positiveNumberValidator(val, fieldName: 'Opening stock'),
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
            decoration: InputDecoration(
              label: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Opening Stock'),
                  SizedBox(width: 4),
                  Icon(Icons.info_outline, size: 16, color: Colors.grey),
                ],
              ),
              hintText: 'Ex: 300',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
          const SizedBox(height: 16),
          // Row: As of Date & At Price/Unit (i)
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: onPickDate,
                  child: IgnorePointer(
                    child: TextFormField(
                      controller: asOfDateController,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
                      decoration: InputDecoration(
                        labelText: 'As of Date',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        suffixIcon:
                            const Icon(Icons.calendar_month_outlined, size: 22),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextFormField(
                  controller: atPriceUnitController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  validator: (val) => val == null || val.trim().isEmpty
                      ? null
                      : positiveNumberValidator(
                          val, fieldName: 'At price/unit'),
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
                  decoration: InputDecoration(
                    label: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('At Price/Unit'),
                        SizedBox(width: 4),
                        Icon(Icons.info_outline, size: 16, color: Colors.grey),
                      ],
                    ),
                    hintText: 'Ex: 2,000',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Row: Min Stock Qty (i) & Item Location
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: minStockController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  validator: (val) => val == null || val.trim().isEmpty
                      ? null
                      : positiveNumberValidator(
                          val, fieldName: 'Min stock quantity'),
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
                  decoration: InputDecoration(
                    label: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Min Stock Qty'),
                        SizedBox(width: 4),
                        Icon(Icons.info_outline, size: 16, color: Colors.grey),
                      ],
                    ),
                    hintText: 'Ex: 5',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextFormField(
                  controller: locationController,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
                  decoration: InputDecoration(
                    labelText: 'Item Location',
                    hintText: 'e.g. Shelf A1',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
