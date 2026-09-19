import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/database/schemas/party.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/india_gst.dart';
import '../../../../core/widgets/app_header.dart';
import '../../../../core/widgets/app_drawer.dart';
import '../providers/party_provider.dart';
import '../../../../core/utils/validators.dart';

class AddPartyScreen extends ConsumerStatefulWidget {
  final Party? partyToEdit;
  const AddPartyScreen({super.key, this.partyToEdit});

  @override
  ConsumerState<AddPartyScreen> createState() => _AddPartyScreenState();
}

class _AddPartyScreenState extends ConsumerState<AddPartyScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  bool get _isEditing => widget.partyToEdit != null;

  // Text controllers
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _balanceController = TextEditingController();
  final _addressController = TextEditingController();
  final _emailController = TextEditingController();
  final _gstinController = TextEditingController();
  final _creditLimitController = TextEditingController();

  // State fields
  late TabController _tabController;
  String _paymentDirection = 'To Pay';
  String _gstType = 'Unregistered/Consumer';
  DateTime _asOfDate = DateTime.now();

  static const List<String> _gstTypes = [
    'Unregistered/Consumer',
    'Registered - Regular',
    'Registered - Composite',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    if (_isEditing) {
      final p = widget.partyToEdit!;
      _nameController.text = p.name;
      _phoneController.text = p.phoneNumber ?? '';
      _balanceController.text = p.outstandingBalance.toStringAsFixed(2);
      _addressController.text = p.address ?? '';
      _emailController.text = p.email ?? '';
      _gstinController.text = p.gstin ?? '';
      _creditLimitController.text =
          p.creditLimit > 0 ? p.creditLimit.toStringAsFixed(0) : '';
      _paymentDirection = p.partyType == 'customer' ? 'To Pay' : 'To Receive';
      _gstType = p.gstType.isNotEmpty ? p.gstType : 'Unregistered/Consumer';
      _asOfDate = p.balanceAsOfDate ?? DateTime.now();
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _balanceController.dispose();
    _addressController.dispose();
    _emailController.dispose();
    _gstinController.dispose();
    _creditLimitController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _saveParty() async {
    if (_formKey.currentState!.validate()) {
      final party = widget.partyToEdit ?? Party();
      party.name = _nameController.text.trim();
      party.phoneNumber = _phoneController.text.trim().isEmpty
          ? null
          : _phoneController.text.trim();
      party.gstin = _gstinController.text.trim().isEmpty
          ? null
          : _gstinController.text.trim();
      party.state = stateFromGstin(_gstinController.text);
      party.address = _addressController.text.trim().isEmpty
          ? null
          : _addressController.text.trim();
      party.email = _emailController.text.trim().isEmpty
          ? null
          : _emailController.text.trim();
      party.partyType =
          _paymentDirection == 'To Pay' ? 'customer' : 'supplier';
      party.outstandingBalance =
          double.tryParse(_balanceController.text) ?? 0.0;
      party.balanceAsOfDate = _asOfDate;
      party.gstType = _gstType;
      party.creditLimit = double.tryParse(_creditLimitController.text) ?? 0.0;

      if (_isEditing) {
        await ref.read(partyProvider.notifier).updateParty(party);
      } else {
        await ref.read(partyProvider.notifier).addParty(party);
      }
      if (mounted) Navigator.pop(context);
    }
  }

  Future<void> _pickAsOfDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _asOfDate,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: AppColors.primary,
                  onPrimary: Colors.white,
                ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() => _asOfDate = picked);
    }
  }

  void _showGstTypeSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.border,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'GST Type',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 8),
              ..._gstTypes.map((type) {
                final isSelected = type == _gstType;
                return ListTile(
                  leading: Icon(
                    isSelected
                        ? Icons.radio_button_checked
                        : Icons.radio_button_off,
                    color: isSelected ? AppColors.primary : AppColors.textHint,
                  ),
                  title: Text(
                    type,
                    style: TextStyle(
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.w400,
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.textPrimary,
                    ),
                  ),
                  onTap: () {
                    setState(() => _gstType = type);
                    Navigator.pop(ctx);
                  },
                );
              }),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: _isEditing ? 'Edit Party' : 'Add New Party',
        onMenuPressed: () => Scaffold.of(context).openDrawer(),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFieldLabel('Party Name', required: true),
                    const SizedBox(height: 6),
                    TextFormField(
                      controller: _nameController,
                      textCapitalization: TextCapitalization.words,
                      decoration: const InputDecoration(
                        hintText: 'Enter party name',
                      ),
                      validator: (val) => val == null || val.trim().isEmpty
                          ? 'Please enter party name'
                          : null,
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.contacts_outlined,
                            size: 16, color: AppColors.primary),
                        label: const Text(
                          'Add party through contacts',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),
                    _buildFieldLabel('Contact Number'),
                    const SizedBox(height: 6),
                    TextFormField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10),
                      ],
                      decoration: const InputDecoration(
                        hintText: 'Contact Number',
                      ),
                    ),

                    const SizedBox(height: 16),
                    _buildFieldLabelWithIcon(
                      'Opening Bal.',
                      infoText:
                          'Opening balance is the starting amount the party owes you or you owe them.',
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      controller: _balanceController,
                      keyboardType: const TextInputType.numberWithOptions(
                          decimal: true, signed: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^-?\d*\.?\d{0,2}')),
                      ],
                      decoration: const InputDecoration(
                        hintText: 'Opening Bal.',
                        prefixText: '\u20B9 ',
                        prefixStyle: TextStyle(
                          color: AppColors.textSecondary,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) return null;
                        final parsed = double.tryParse(val.trim());
                        if (parsed == null || !parsed.isFinite) {
                          return 'Enter a valid amount';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 16),
                    _buildFieldLabel('As of Date'),
                    const SizedBox(height: 6),
                    InkWell(
                      onTap: _pickAsOfDate,
                      borderRadius: BorderRadius.circular(12),
                      child: InputDecorator(
                        decoration: const InputDecoration(
                          suffixIcon:
                              Icon(Icons.calendar_today_outlined, size: 20),
                        ),
                        child: Text(
                          DateFormat('dd/MM/yyyy').format(_asOfDate),
                          style: const TextStyle(
                            fontSize: 15,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),
                    _buildFieldLabel('Payment Direction'),
                    const SizedBox(height: 8),
                    _buildPaymentDirectionToggle(),

                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Text(
                          'Set Credit Limit',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const SizedBox(width: 6),
                        _buildInfoIcon(
                            'Set a maximum credit limit for this party.'),
                        const SizedBox(width: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [AppColors.warning, AppColors.accent],
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            'PRO',
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      controller: _creditLimitController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: const InputDecoration(
                        hintText: 'e.g. 10000',
                        prefixText: '\u20B9 ',
                        prefixStyle: TextStyle(
                          color: AppColors.textSecondary,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                        suffixIcon: Icon(Icons.lock_outline,
                            size: 18, color: AppColors.textHint),
                      ),
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) return null;
                        return positiveNumberValidator(val,
                            fieldName: 'Credit limit');
                      },
                    ),

                    const SizedBox(height: 20),
                    _buildTabBar(),
                    const SizedBox(height: 12),
                    _buildTabContent(),
                  ],
                ),
              ),
            ),
            _buildFooter(),
          ],
        ),
      ),
    ),
  ),
);
  }

  // Helper Widgets

  Widget _buildFieldLabel(String text, {bool required = false}) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        if (required) ...[
          const SizedBox(width: 2),
          const Text(
            '*',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: AppColors.danger,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildFieldLabelWithIcon(String text, {String? infoText}) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        if (infoText != null) ...[
          const SizedBox(width: 6),
          _buildInfoIcon(infoText),
        ],
      ],
    );
  }

  Widget _buildInfoIcon(String tooltip) {
    return Tooltip(
      message: tooltip,
      preferBelow: false,
      decoration: BoxDecoration(
        color: AppColors.textPrimary,
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: const TextStyle(color: Colors.white, fontSize: 12),
      child: const Icon(
        Icons.info_outline,
        size: 16,
        color: AppColors.textHint,
      ),
    );
  }

  Widget _buildPaymentDirectionToggle() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceAlt,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Expanded(
            child: _buildDirectionChip(
              label: 'To Receive',
              icon: Icons.arrow_downward_rounded,
              isSelected: _paymentDirection == 'To Receive',
              activeColor: AppColors.success,
              onTap: () => setState(() => _paymentDirection = 'To Receive'),
            ),
          ),
          Expanded(
            child: _buildDirectionChip(
              label: 'To Pay',
              icon: Icons.arrow_upward_rounded,
              isSelected: _paymentDirection == 'To Pay',
              activeColor: AppColors.primary,
              onTap: () => setState(() => _paymentDirection = 'To Pay'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDirectionChip({
    required String label,
    required IconData icon,
    required bool isSelected,
    required Color activeColor,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? activeColor : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: isSelected ? Colors.white : AppColors.textSecondary,
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color: isSelected ? Colors.white : AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceAlt,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        labelColor: Colors.white,
        unselectedLabelColor: AppColors.textSecondary,
        labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        padding: const EdgeInsets.all(4),
        tabs: const [
          Tab(text: 'Addresses'),
          Tab(text: 'GST Details'),
        ],
      ),
    );
  }

  Widget _buildTabContent() {
    return SizedBox(
      height: 200,
      child: TabBarView(
        controller: _tabController,
        children: [
          _buildAddressesTab(),
          _buildGstDetailsTab(),
        ],
      ),
    );
  }

  Widget _buildAddressesTab() {
    return Column(
      children: [
        _buildFieldLabel('Billing Address'),
        const SizedBox(height: 6),
        TextFormField(
          controller: _addressController,
          maxLines: 2,
          decoration: const InputDecoration(
            hintText: 'Billing Address',
          ),
        ),
        const SizedBox(height: 14),
        _buildFieldLabel('Email Address'),
        const SizedBox(height: 6),
        TextFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            hintText: 'Email Address',
            prefixIcon: Icon(Icons.email_outlined, size: 20),
          ),
        ),
      ],
    );
  }

  Widget _buildGstDetailsTab() {
    return Column(
      children: [
        _buildFieldLabel('GST Type'),
        const SizedBox(height: 6),
        InkWell(
          onTap: _showGstTypeSheet,
          borderRadius: BorderRadius.circular(12),
          child: InputDecorator(
            decoration: InputDecoration(
              suffixIcon: Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppColors.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.keyboard_arrow_down,
                    size: 20, color: AppColors.primary),
              ),
            ),
            child: Text(
              _gstType,
              style: const TextStyle(
                fontSize: 15,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ),
        const SizedBox(height: 14),
        if (_gstType != 'Unregistered/Consumer') ...[
          _buildFieldLabel('GSTIN'),
          const SizedBox(height: 6),
          TextFormField(
            controller: _gstinController,
            textCapitalization: TextCapitalization.characters,
            decoration: const InputDecoration(
              hintText: 'e.g. 27AAPFU0939F1ZV',
              prefixIcon: Icon(Icons.numbers, size: 20),
            ),
            onChanged: (value) {
              stateFromGstin(value);
            },
          ),
        ],
        const SizedBox(height: 14),
        _buildFieldLabel('State'),
        const SizedBox(height: 6),
        DropdownButtonFormField<String>(
          initialValue: stateFromGstin(_gstinController.text),
          isExpanded: true,
          decoration: const InputDecoration(
            hintText: 'Select State',
          ),
          items: indiaStates
              .map((state) => DropdownMenuItem(value: state, child: Text(state)))
              .toList(),
          onChanged: (state) {},
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.info_outline,
                    size: 16, color: AppColors.textHint),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Parties are people you do business with. Use them for invoices and to keep track of your payables & receivables.',
                    style: TextStyle(
                      fontSize: 11,
                      height: 1.4,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _saveParty,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  _isEditing ? 'Update Party' : 'Save Party',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
