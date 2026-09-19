import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/responsive_scaffold.dart';
import '../providers/party_provider.dart';
import 'party_detail_screen.dart';

class KhataScreen extends ConsumerWidget {
  const KhataScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final partyState = ref.watch(partyProvider);

    return ResponsiveScaffold(
      currentIndex: 4,
      title: 'Customer Ledgers (Khata)',
      body: partyState.when(
        data: (parties) {
          if (parties.isEmpty) {
            return const _EmptyKhata();
          }
          return LayoutBuilder(
            builder: (context, constraints) {
              final isDesktop = constraints.maxWidth >= 700;
              if (isDesktop) {
                return GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    mainAxisExtent: 100,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: parties.length,
                  itemBuilder: (context, index) {
                    final party = parties[index];
                    return Card(
                      margin: EdgeInsets.zero,
                      child: Center(
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
                                  style: TextStyle(
                                      fontSize: 10, color: AppColors.textHint)),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PartyDetailScreen(party: party)),
                            );
                          },
                        ),
                      ),
                    );
                  },
                );
              }

              // Mobile view remains identical
              return ListView.builder(
                itemCount: parties.length,
                itemBuilder: (context, index) {
                  final party = parties[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                              style: TextStyle(
                                  fontSize: 10, color: AppColors.textHint)),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => PartyDetailScreen(party: party)),
                        );
                      },
                    ),
                  );
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
      // FAB removed — Add Customer action lives in the Dashboard Quick Action Banner
    );
  }
}

/// Empty state for the ledger screen — no add button since Dashboard banner handles it.
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
            'Add a customer to start tracking dues & advances.',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}
