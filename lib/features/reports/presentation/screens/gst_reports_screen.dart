import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_bottom_nav.dart';
import '../../../../core/widgets/app_header.dart';
import '../../../../core/widgets/responsive_scaffold.dart';

import '../../data/gst_report_models.dart';
import '../providers/gst_report_provider.dart';
import '../widgets/gstr1_table_view.dart';
import '../widgets/gstr3b_table_view.dart';
import '../widgets/gst_transaction_table_view.dart';
import '../widgets/gstr9_table_view.dart';
import '../widgets/gst_export_actions.dart';
import '../widgets/gst_hsn_summary_table_view.dart';
import '../widgets/sac_report_table_view.dart';

class GstReportsScreen extends ConsumerWidget {
  const GstReportsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDesktop = MediaQuery.of(context).size.width >= 900;
    final state = ref.watch(gstReportProvider);
    final theme = Theme.of(context);

    if (isDesktop) {
      return ResponsiveScaffold(
        currentIndex: 6,
        body: Row(
          children: [
            SizedBox(
              width: 280,
              child: _GstReportSidebar(
                activeTab: state.filter.tab,
                onTabSelected: (tab) =>
                    ref.read(gstReportProvider.notifier).setTab(tab),
              ),
            ),
            const VerticalDivider(width: 1, color: AppColors.border),
            Expanded(
              child: Column(
                children: [
                  _WorkspaceHeader(
                    title: _titleFor(state.filter.tab),
                    actions: [
                      SizedBox(
                        width: 200,
                        child: _buildDatePicker(
                            context, ref, state.filter.preset, theme),
                      ),
                      const SizedBox(width: 12),
                      FilledButton.icon(
                        icon:
                            const Icon(Icons.file_download_outlined, size: 18),
                        label: const Text('Export'),
                        style: FilledButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () => showGstExportModal(
                          context: context,
                          ref: ref,
                          data: state.data.valueOrNull,
                          tab: state.filter.tab,
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 1, color: AppColors.border),
                  Expanded(
                    child: _buildWorkspaceContent(context, ref, state),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return ResponsiveScaffold(
        currentIndex: 6,
        mobileIndex: -1,
        title: 'GST Reports',
        showBackButton: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.file_download_outlined),
            tooltip: 'Export Reports',
            onPressed: () => showGstExportModal(
              context: context,
              ref: ref,
              data: state.data.valueOrNull,
            ),
          ),
        ],
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              color: AppColors.surface,
              child: Row(
                children: [
                  const Text(
                    'Period:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildDatePicker(
                        context, ref, state.filter.preset, theme),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.file_download_outlined,
                        color: AppColors.primary),
                    tooltip: 'Export Reports',
                    onPressed: () => showGstExportModal(
                      context: context,
                      ref: ref,
                      data: state.data.valueOrNull,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1, color: AppColors.border),
            Expanded(
              child: _GstReportMobileList(
                onReportTapped: (tab) {
                  ref.read(gstReportProvider.notifier).setTab(tab);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => GstReportDetailScreen(tab: tab),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    }
  }
}

Widget _buildDatePicker(
  BuildContext context,
  WidgetRef ref,
  GstDatePreset currentPreset,
  ThemeData theme,
) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    decoration: BoxDecoration(
      color: AppColors.surface,
      border: Border.all(color: AppColors.border),
      borderRadius: BorderRadius.circular(8),
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<GstDatePreset>(
        value: currentPreset,
        isExpanded: true,
        icon: const Icon(Icons.calendar_today, size: 16),
        style: theme.textTheme.bodyMedium?.copyWith(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
        ),
        items: GstDatePreset.values.map((preset) {
          return DropdownMenuItem(
            value: preset,
            child: Text(_labelForPreset(preset)),
          );
        }).toList(),
        onChanged: (value) async {
          if (value == null) return;
          if (value == GstDatePreset.custom) {
            final now = DateTime.now();
            final picked = await showDateRangePicker(
              context: context,
              firstDate: DateTime(2020),
              lastDate: DateTime(now.year + 2),
              initialDateRange: DateTimeRange(
                start: DateTime(now.year, now.month, 1),
                end: now,
              ),
            );
            if (picked != null) {
              await ref
                  .read(gstReportProvider.notifier)
                  .setCustomRange(picked.start, picked.end);
            }
          } else {
            await ref.read(gstReportProvider.notifier).setPreset(value);
          }
        },
      ),
    ),
  );
}

String _labelForPreset(GstDatePreset preset) {
  switch (preset) {
    case GstDatePreset.thisMonth:
      return 'This Month';
    case GstDatePreset.lastMonth:
      return 'Last Month';
    case GstDatePreset.currentFinancialYear:
      return 'Current FY';
    case GstDatePreset.custom:
      return 'Custom Range';
  }
}

Widget _buildWorkspaceContent(
  BuildContext context,
  WidgetRef ref,
  GstReportState state,
) {
  return state.data.when(
    loading: () => const Center(child: CircularProgressIndicator()),
    error: (error, _) => Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 48, color: AppColors.danger),
            const SizedBox(height: 12),
            Text(
              'Error loading report: $error',
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.danger),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => ref.read(gstReportProvider.notifier).load(),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    ),
    data: (data) {
      switch (state.filter.tab) {
        case GstReportType.gstr1:
          return Gstr1TableView(data: data);
        case GstReportType.gstr2:
          return GstrTransactionTableView(data: data);
        case GstReportType.gstr3b:
          return Gstr3bTableView(data: data);
        case GstReportType.gstTransaction:
          return GstrTransactionTableView(data: data);
        case GstReportType.gstr9:
          return Gstr9TableView(data: data);
        case GstReportType.hsnSummary:
          return GstHsnSummaryTableView(data: data);
        case GstReportType.sacReport:
          return SacReportTableView(data: data);
      }
    },
  );
}

class _GstReportSidebar extends StatelessWidget {
  final GstReportType activeTab;
  final ValueChanged<GstReportType> onTabSelected;

  const _GstReportSidebar({
    required this.activeTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: GstReportType.values.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final tab = GstReportType.values[index];
        final isActive = tab == activeTab;
        return Material(
          color: isActive
              ? AppColors.primary.withValues(alpha: 0.1)
              : AppColors.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: isActive ? AppColors.primary : AppColors.border,
            ),
          ),
          child: ListTile(
            leading: Icon(_iconFor(tab),
                color: isActive ? AppColors.primary : AppColors.textSecondary),
            title: Text(
              _titleFor(tab),
              style: TextStyle(
                fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
                color: isActive ? AppColors.primary : null,
              ),
            ),
            trailing: isActive
                ? const Icon(Icons.check, size: 18, color: AppColors.primary)
                : null,
            onTap: () => onTabSelected(tab),
          ),
        );
      },
    );
  }
}

class _GstReportMobileList extends StatelessWidget {
  final ValueChanged<GstReportType> onReportTapped;

  const _GstReportMobileList({required this.onReportTapped});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: GstReportType.values.length,
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        final tab = GstReportType.values[index];
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: AppColors.border),
          ),
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: CircleAvatar(
              backgroundColor: AppColors.primary.withValues(alpha: 0.1),
              child: Icon(_iconFor(tab), color: AppColors.primary, size: 20),
            ),
            title: Text(
              _titleFor(tab),
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                _subtitleFor(tab),
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 12,
                ),
              ),
            ),
            trailing:
                const Icon(Icons.chevron_right, color: AppColors.textSecondary),
            onTap: () => onReportTapped(tab),
          ),
        );
      },
    );
  }
}

class _WorkspaceHeader extends StatelessWidget {
  final String title;
  final List<Widget> actions;

  const _WorkspaceHeader({required this.title, required this.actions});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          ...actions,
        ],
      ),
    );
  }
}

class GstReportDetailScreen extends ConsumerWidget {
  final GstReportType tab;

  const GstReportDetailScreen({super.key, required this.tab});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(gstReportProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppHeader(
        title: _titleFor(tab),
        showBackButton: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.file_download_outlined),
            tooltip: 'Export',
            onPressed: () => showGstExportModal(
              context: context,
              ref: ref,
              data: state.data.valueOrNull,
              tab: tab,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            color: AppColors.surface,
            child: Row(
              children: [
                const Text(
                  'Period:',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildDatePicker(
                      context, ref, state.filter.preset, theme),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.file_download_outlined,
                      color: AppColors.primary),
                  tooltip: 'Export',
                  onPressed: () => showGstExportModal(
                    context: context,
                    ref: ref,
                    data: state.data.valueOrNull,
                    tab: tab,
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: AppColors.border),
          Expanded(
            child: _buildWorkspaceContent(context, ref, state),
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNav(currentIndex: -1),
    );
  }
}

IconData _iconFor(GstReportType tab) {
  switch (tab) {
    case GstReportType.gstr1:
      return Icons.outgoing_mail;
    case GstReportType.gstr2:
      return Icons.inventory_2_outlined;
    case GstReportType.gstr3b:
      return Icons.summarize_outlined;
    case GstReportType.gstTransaction:
      return Icons.receipt_long_outlined;
    case GstReportType.gstr9:
      return Icons.account_balance_outlined;
    case GstReportType.hsnSummary:
      return Icons.category_outlined;
    case GstReportType.sacReport:
      return Icons.miscellaneous_services_outlined;
  }
}

String _titleFor(GstReportType tab) {
  switch (tab) {
    case GstReportType.gstr1:
      return 'GSTR-1';
    case GstReportType.gstr2:
      return 'GSTR-2';
    case GstReportType.gstr3b:
      return 'GSTR-3B';
    case GstReportType.gstTransaction:
      return 'GST Transaction';
    case GstReportType.gstr9:
      return 'GSTR-9';
    case GstReportType.hsnSummary:
      return 'HSN Summary';
    case GstReportType.sacReport:
      return 'SAC Report';
  }
}

String _subtitleFor(GstReportType tab) {
  switch (tab) {
    case GstReportType.gstr1:
      return 'Outward supplies (B2B, B2C, Exports)';
    case GstReportType.gstr2:
      return 'Inward supplies & purchase register';
    case GstReportType.gstr3b:
      return 'Monthly summary self-declaration';
    case GstReportType.gstTransaction:
      return 'Detailed GST transaction ledger';
    case GstReportType.gstr9:
      return 'Annual return compilation summary';
    case GstReportType.hsnSummary:
      return 'HSN-wise summary of goods supplied';
    case GstReportType.sacReport:
      return 'SAC-wise summary of services supplied';
  }
}
