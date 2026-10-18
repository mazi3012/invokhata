import 'package:flutter/material.dart';
import '../../features/inventory/presentation/widgets/hsn_codes_list.dart';
import '../../core/theme/app_colors.dart';

class HsnAutocompleteField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;

  const HsnAutocompleteField({
    super.key,
    required this.controller,
    this.labelText = 'HSN/SAC Code',
  });

  @override
  State<HsnAutocompleteField> createState() => _HsnAutocompleteFieldState();
}

class _HsnAutocompleteFieldState extends State<HsnAutocompleteField> {
  List<Map<String, String>> _filteredHsnCodes = [];
  bool _showDropdown = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onHsnChanged);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onHsnChanged);
    super.dispose();
  }

  void _onHsnChanged() {
    final query = widget.controller.text.trim();
    if (query.isEmpty) {
      if (_showDropdown) {
        setState(() {
          _filteredHsnCodes = [];
          _showDropdown = false;
        });
      }
    } else {
      final filtered = commonHsnCodes.where((code) {
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
    widget.controller.text = hsnCode['code'] ?? '';
    setState(() {
      _showDropdown = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: widget.controller,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
          decoration: InputDecoration(
            labelText: widget.labelText,
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
              borderSide: const BorderSide(color: AppColors.primary, width: 1.8),
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
              color: AppColors.surface,
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _filteredHsnCodes.length,
              itemBuilder: (context, index) {
                final hsn = _filteredHsnCodes[index];
                return InkWell(
                  onTap: () => _selectHsnCode(hsn),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
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
    );
  }
}
