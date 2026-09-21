import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/responsive_scaffold.dart';
import '../../../../core/database/schemas/party.dart';
import '../providers/party_provider.dart';
import 'add_party_screen.dart';
import 'party_detail_screen.dart';

class KhataScreen extends ConsumerStatefulWidget {
  const KhataScreen({super.key});

  @override
  ConsumerState<KhataScreen> createState() => _KhataScreenState();
}

class _KhataScreenState extends ConsumerState<KhataScreen> {
  Party? _selectedParty;

  void _openAddCustomer() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const AddPartyScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final partyState = ref.watch(partyProvider);

    return ResponsiveScaffold(
      currentIndex: 4,
      title: 'Customer Ledgers (Khata)',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _openAddCustomer,
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.person_add_alt_1_outlined),
        label: const Text(
          'New Customer',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: partyState.when(
        data: (parties) {
          if (parties.isEmpty) {
            return const _EmptyKhata();
          }
          return LayoutBuilder(
            builder: (context, constraints) {
              final isDesktop = constraints.maxWidth >= 900;

              if (isDesktop) {
                // On desktop, if a party was selected but is no longer in the list (e.g. deleted), clear selection
                if (_selectedParty != null &&
                    !parties.any((p) => p.id == _selectedParty!.id)) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    setState(() {
                      _selectedParty = null;
                    });
                  });
                }

                // Also update the selected party object if it changed in the list
                if (_selectedParty != null) {
                  final updated =
                      parties.firstWhere((p) => p.id == _selectedParty!.id);
                  if (updated.outstandingBalance !=
                          _selectedParty!.outstandingBalance ||
                      updated.name != _selectedParty!.name) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      setState(() {
                        _selectedParty = updated;
                      });
                    });
                  }
                }

                return Row(
                  children: [
                    // List Section
                    Expanded(
                      flex: 4,
                      child: _buildPartyList(parties, isDesktop),
                    ),
                    const VerticalDivider(width: 1, color: AppColors.divider),
                    // Detail Section
                    Expanded(
                      flex: 6,
                      child: _selectedParty == null
                          ? const Center(
                              child: Text(
                                'Select a customer to view details',
                                style: TextStyle(color: AppColors.textHint),
                              ),
                            )
                          : Container(
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: AppColors.divider),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.05),
                                    blurRadius: 10,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Scaffold(
                                  backgroundColor: Colors.white,
                                  body: PartyDetailView(party: _selectedParty!),
                                  persistentFooterButtons: [
                                    ElevatedButton.icon(
                                      onPressed: () => showRecordDuesDialog(
                                          context, ref, _selectedParty!),
                                      icon:
                                          const Icon(Icons.add_circle_outline),
                                      label: const Text('Record Dues'),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.warning,
                                          foregroundColor: Colors.white),
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () => showAddPaymentDialog(
                                          context, ref, _selectedParty!),
                                      icon: const Icon(Icons.payments_outlined),
                                      label: const Text('Record Payment'),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.success,
                                          foregroundColor: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ),
                  ],
                );
              }

              // Mobile View
              return _buildPartyList(parties, isDesktop);
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }

  Widget _buildPartyList(List<Party> parties, bool isDesktop) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: parties.length,
      itemBuilder: (context, index) {
        final party = parties[index];
        final isSelected = _selectedParty?.id == party.id;

        return Card(
          elevation: isSelected ? 2 : 0,
          color: isSelected
              ? AppColors.primaryContainer.withValues(alpha: 0.5)
              : null,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: isSelected
                  ? AppColors.primary
                  : AppColors.divider.withValues(alpha: 0.5),
              width: isSelected ? 1.5 : 1,
            ),
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: AppColors.primaryContainer,
              child: Text(party.name[0].toUpperCase(),
                  style: const TextStyle(
                      color: AppColors.primaryDark,
                      fontWeight: FontWeight.bold)),
            ),
            title: Text(party.name,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(party.phoneNumber ?? 'No phone'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text('Balance Due',
                    style: TextStyle(fontSize: 10, color: AppColors.textHint)),
                Text(
                  '₹${party.outstandingBalance.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: party.outstandingBalance > 0
                        ? AppColors.danger
                        : AppColors.success,
                  ),
                ),
              ],
            ),
            onTap: () {
              if (isDesktop) {
                setState(() {
                  _selectedParty = party;
                });
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => PartyDetailScreen(party: party)),
                );
              }
            },
          ),
        );
      },
    );
  }
}

class _EmptyKhata extends StatelessWidget {
  const _EmptyKhata();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: AppColors.primaryContainer,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.people_alt_outlined,
                size: 40, color: AppColors.primary),
          ),
          const SizedBox(height: 16),
          const Text(
            'No customers yet',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Use the New Customer button to start tracking.',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}
