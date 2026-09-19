import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:file_picker/file_picker.dart';
import 'package:printing/printing.dart';
import '../database/schemas/invoice.dart';
import '../services/settings_service.dart';
import 'pdf_generator.dart';
import '../../core/widgets/app_header.dart';

class PdfPreviewScreen extends ConsumerWidget {
  final Invoice invoice;
  const PdfPreviewScreen({super.key, required this.invoice});

  Future<void> _downloadPdf(BuildContext context, WidgetRef ref) async {
    try {
      final settings = ref.read(settingsProvider);
      final pdfBytes = await PdfGenerator.generatePdfBytes(invoice, settings);

      String? outputFile = await FilePicker.platform.saveFile(
        dialogTitle: 'Save Invoice',
        fileName: 'Invoice_${invoice.invoiceNumber}.pdf',
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (outputFile != null) {
        final file = File(outputFile);
        await file.writeAsBytes(pdfBytes);

        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Invoice saved successfully')),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error saving PDF: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppHeader(
        title: 'Invoice #${invoice.invoiceNumber}',
        showBackButton: true,
      ),
      body: PdfPreview(
        maxPageWidth: 800,
        padding: const EdgeInsets.all(24),
        build: (format) => PdfGenerator.generatePdfBytes(invoice, settings),
        canChangePageFormat: false,
        canChangeOrientation: false,
        canDebug: false,
        allowPrinting: true,
        allowSharing: true,
        pdfFileName: 'Invoice_${invoice.invoiceNumber}.pdf',
        // Only show Download action as additional action, others are built-in
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            tooltip: 'Download PDF',
            onPressed: () => _downloadPdf(context, ref),
          ),
        ],
      ),
    );
  }
}
