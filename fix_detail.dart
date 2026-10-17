import 'dart:io';

void main() {
  final file = File('lib/features/reports/presentation/screens/gst_reports_screen.dart');
  String content = file.readAsStringSync();

  // Replace GstReportDetailScreen
  content = content.replaceAll(
'''class GstReportDetailScreen extends ConsumerWidget {
  const GstReportDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(gstReportProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleFor(state.filter.tab)),
      ),
      body: const GstReportsScreen(), // We will nest the desktop view for now or reuse the workspace content.
    );
  }
}''', 
'''class GstReportDetailScreen extends ConsumerWidget {
  const GstReportDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(gstReportProvider);
    final theme = Theme.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleFor(state.filter.tab)),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<GstDatePreset>(
                value: state.filter.preset,
                icon: const Icon(Icons.calendar_today, size: 16),
                style: theme.textTheme.bodySmall,
                onChanged: (p) {
                  if (p != null) ref.read(gstReportProvider.notifier).setPreset(p);
                },
                items: const [
                  DropdownMenuItem(value: GstDatePreset.thisMonth, child: Text('This Month')),
                  DropdownMenuItem(value: GstDatePreset.lastMonth, child: Text('Last Month')),
                  DropdownMenuItem(value: GstDatePreset.currentFinancialYear, child: Text('FY')),
                ],
              ),
            ),
          )
        ],
      ),
      body: const _WorkspaceContent(isDesktop: false),
    );
  }
}'''
  );

  // Now, extract _WorkspaceContent. We will just convert the GstReportsScreen methods into _WorkspaceContent.
  // Actually, it's easier to just move the methods to `_WorkspaceContent` class and replace them in GstReportsScreen.
  
}
