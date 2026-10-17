import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printing/printing.dart';

import '../../../../core/services/settings_service.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/gst_export_service.dart';
import '../../data/gst_report_models.dart';

/// Shows a modal bottom sheet (mobile) or dialog (desktop) with export options.
Future<void> showGstExportModal({
  required BuildContext context,
  required WidgetRef ref,
  required GstReportData? data,
  GstReportType? tab,
}) async {
  if (data == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Report data is still loading. Please wait...'),
      ),
    );
    return;
  }

  final isMobile = MediaQuery.sizeOf(context).width < 600;

  if (isMobile) {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => _ExportBottomSheet(
        data: data,
        tab: tab,
        ref: ref,
      ),
    );
  } else {
    await showDialog(
      context: context,
      builder: (dialogContext) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480),
          child: _ExportDialogContent(
            data: data,
            tab: tab,
            ref: ref,
          ),
        ),
      ),
    );
  }
}

class _ExportBottomSheet extends StatelessWidget {
  final GstReportData data;
  final GstReportType? tab;
  final WidgetRef ref;

  const _ExportBottomSheet({
    required this.data,
    required this.tab,
    required this.ref,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: AppColors.border,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Row(
              children: [
                const Icon(Icons.file_download_outlined,
                    color: AppColors.primary, size: 24),
                const SizedBox(width: 10),
                Text(
                  tab != null ? 'Export ${_tabName(tab!)}' : 'Export Reports',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            const Text(
              'Select a format to save or share report data',
              style: TextStyle(color: AppColors.textSecondary, fontSize: 13),
            ),
            const SizedBox(height: 16),
            ..._buildOptionsList(
              context: context,
              data: data,
              tab: tab,
              ref: ref,
              onSelect: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}

class _ExportDialogContent extends StatelessWidget {
  final GstReportData data;
  final GstReportType? tab;
  final WidgetRef ref;

  const _ExportDialogContent({
    required this.data,
    required this.tab,
    required this.ref,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.file_download_outlined,
                      color: AppColors.primary, size: 24),
                  const SizedBox(width: 10),
                  Text(
                    tab != null ? 'Export ${_tabName(tab!)}' : 'Export Reports',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 6),
          const Text(
            'Select a format to save or review report data',
            style: TextStyle(color: AppColors.textSecondary, fontSize: 13),
          ),
          const SizedBox(height: 16),
          ..._buildOptionsList(
            context: context,
            data: data,
            tab: tab,
            ref: ref,
            onSelect: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}


List<Widget> _buildOptionsList({
  required BuildContext context,
  required GstReportData data,
  required GstReportType? tab,
  required WidgetRef ref,
  required VoidCallback onSelect,
}) {
  final options = <Widget>[
    _ExportOptionTile(
      icon: Icons.picture_as_pdf_outlined,
      iconColor: AppColors.danger,
      title: 'PDF Document',
      subtitle: 'Printable GST report with summaries & tables',
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.print_outlined, size: 20),
            tooltip: 'Preview / Print',
            onPressed: () {
              onSelect();
              _previewPdf(context, ref, data, tab);
            },
          ),
          IconButton(
            icon: const Icon(Icons.download_outlined, size: 20),
            tooltip: 'Save PDF',
            onPressed: () {
              onSelect();
              _executeExport(
                context,
                ref,
                data: data,
                format: GstExportFormat.pdf,
                tab: tab,
              );
            },
          ),
        ],
      ),
      onTap: () {
        onSelect();
        _executeExport(
          context,
          ref,
          data: data,
          format: GstExportFormat.pdf,
          tab: tab,
        );
      },
    ),
    const SizedBox(height: 8),
    _ExportOptionTile(
      icon: Icons.table_chart_outlined,
      iconColor: AppColors.success,
      title: 'Excel Spreadsheet (.xlsx)',
      subtitle: 'Multi-tab workbook (Summary, B2B, B2CL, B2CS, HSN, Docs)',
      onTap: () {
        onSelect();
        _executeExport(
          context,
          ref,
          data: data,
          format: GstExportFormat.xlsx,
          tab: tab,
        );
      },
    ),
    const SizedBox(height: 8),
  ];

  if (tab == null || tab == GstReportType.gstr1) {
    options.add(
      _ExportOptionTile(
        icon: Icons.data_object_outlined,
        iconColor: AppColors.primary,
        title: 'GSTR-1 JSON',
        subtitle: 'Statutory payload for GST Portal offline tool',
        onTap: () {
          onSelect();
          _executeExport(
            context,
            ref,
            data: data,
            format: GstExportFormat.gstr1Json,
            tab: GstReportType.gstr1,
          );
        },
      ),
    );
    options.add(const SizedBox(height: 8));
  }

  if (tab == null || tab == GstReportType.gstr3b) {
    options.add(
      _ExportOptionTile(
        icon: Icons.receipt_long_outlined,
        iconColor: AppColors.warning,
        title: 'GSTR-3B JSON',
        subtitle: 'Summary return payload for GST Portal offline tool',
        onTap: () {
          onSelect();
          _executeExport(
            context,
            ref,
            data: data,
            format: GstExportFormat.gstr3bJson,
            tab: GstReportType.gstr3b,
          );
        },
      ),
    );
    options.add(const SizedBox(height: 8));
  }

  options.add(
    _ExportOptionTile(
      icon: Icons.folder_zip_outlined,
      iconColor: Colors.purple,
      title: 'All Returns (ZIP)',
      subtitle: 'Bundle PDF, Excel, and JSON files into a single archive',
      onTap: () {
        onSelect();
        _executeExport(
          context,
          ref,
          data: data,
          format: null,
          tab: tab,
        );
      },
    ),
  );

  return options;
}

class _ExportOptionTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final VoidCallback onTap;

  const _ExportOptionTile({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    this.trailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: AppColors.border),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        leading: CircleAvatar(
          backgroundColor: iconColor.withValues(alpha: 0.1),
          child: Icon(icon, color: iconColor, size: 20),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: AppColors.textSecondary, fontSize: 12),
        ),
        trailing: trailing ??
            const Icon(Icons.chevron_right, color: AppColors.textSecondary),
        onTap: onTap,
      ),
    );
  }
}


Future<void> _previewPdf(
  BuildContext context,
  WidgetRef ref,
  GstReportData data,
  GstReportType? tab,
) async {
  try {
    final settings = ref.read(settingsProvider);
    final artifact = await GstExportService.export(
      data: data,
      settings: settings,
      format: GstExportFormat.pdf,
      tab: tab ?? GstReportType.gstr1,
    );
    await Printing.layoutPdf(
      onLayout: (_) async => artifact.bytes,
      name: artifact.fileName,
    );
  } catch (e) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to preview PDF: $e'),
          backgroundColor: AppColors.danger,
        ),
      );
    }
  }
}

Future<void> _executeExport(
  BuildContext context,
  WidgetRef ref, {
  required GstReportData data,
  required GstExportFormat? format,
  required GstReportType? tab,
}) async {
  final messenger = ScaffoldMessenger.of(context);
  messenger.showSnackBar(
    const SnackBar(
      content: Row(
        children: [
          SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 12),
          Text('Generating export...'),
        ],
      ),
      duration: Duration(seconds: 1),
    ),
  );

  try {
    final settings = ref.read(settingsProvider);
    final GstExportArtifact artifact;
    if (format == null) {
      artifact = await GstExportService.exportAll(
        data: data,
        settings: settings,
      );
    } else {
      artifact = await GstExportService.export(
        data: data,
        settings: settings,
        format: format,
        tab: tab ?? GstReportType.gstr1,
      );
    }

    final ext = artifact.fileName.split('.').last;
    final outputFile = await FilePicker.platform.saveFile(
      dialogTitle: 'Save ${artifact.fileName}',
      fileName: artifact.fileName,
      type: FileType.custom,
      allowedExtensions: [ext],
      bytes: artifact.bytes,
    );

    if (outputFile != null) {
      final file = File(outputFile);
      if (!await file.exists() || (await file.length()) == 0) {
        await file.writeAsBytes(artifact.bytes);
      }
      if (context.mounted) {
        messenger.showSnackBar(
          SnackBar(
            content: Text('Saved: ${artifact.fileName}'),
            backgroundColor: AppColors.success,
          ),
        );
      }
    }
  } on GstExportException catch (e) {
    if (context.mounted) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Row(
            children: [
              Icon(Icons.warning_amber_rounded, color: AppColors.danger),
              SizedBox(width: 8),
              Text('GST Export Requirements'),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'The return could not be exported due to the following requirement(s):',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 12),
                ...e.validation.errors.map(
                  (err) => Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('• ',
                            style: TextStyle(
                              color: AppColors.danger,
                              fontWeight: FontWeight.bold,
                            )),
                        Expanded(
                          child: Text(
                            err.message,
                            style: const TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Dismiss'),
            ),
          ],
        ),
      );
    }
  } catch (e) {
    if (context.mounted) {
      messenger.showSnackBar(
        SnackBar(
          content: Text('Export failed: $e'),
          backgroundColor: AppColors.danger,
        ),
      );
    }
  }
}

String _tabName(GstReportType tab) {
  switch (tab) {
    case GstReportType.gstr1:
      return 'GSTR-1';
    case GstReportType.gstr2:
      return 'GSTR-2';
    case GstReportType.gstr3b:
      return 'GSTR-3B';
    case GstReportType.gstTransaction:
      return 'Transactions';
    case GstReportType.gstr9:
      return 'GSTR-9';
    case GstReportType.hsnSummary:
      return 'HSN Summary';
    case GstReportType.sacReport:
      return 'SAC Report';
  }
}

