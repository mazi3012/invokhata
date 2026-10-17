import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:file_picker/file_picker.dart';
import 'package:printing/printing.dart';
import '../database/isar_service.dart';
import '../database/schemas/invoice.dart';
import '../database/schemas/party.dart';
import '../services/settings_service.dart';
import 'einvoice_service.dart';
import 'eway_bill_service.dart';
import 'pdf_generator.dart';
import '../../core/widgets/app_header.dart';

class PdfPreviewScreen extends ConsumerWidget {
  final Invoice invoice;
  const PdfPreviewScreen({super.key, required this.invoice});

  Future<Party> _resolveParty() async {
    if (invoice.partyId != null) {
      final p = await IsarService.isar.partys.get(invoice.partyId!);
      if (p != null) return p;
    }
    return Party()
      ..name = invoice.partyName
      ..gstin = invoice.partyGstin
      ..state = invoice.partyState
      ..phoneNumber = invoice.partyPhone;
  }

  Future<void> _exportEInvoiceJson(BuildContext context, WidgetRef ref) async {
    try {
      final settings = ref.read(settingsProvider);
      final party = await _resolveParty();

      final jsonString = EInvoiceService.generateJson(
        invoice: invoice,
        party: party,
        settings: settings,
      );

      String? outputFile = await FilePicker.platform.saveFile(
        dialogTitle: 'Save E-Invoice JSON',
        fileName: 'EInvoice_${invoice.invoiceNumber}.json',
        type: FileType.custom,
        allowedExtensions: ['json'],
      );

      if (outputFile != null) {
        final file = File(outputFile);
        await file.writeAsString(jsonString);

        await EInvoiceService.saveEInvoice(
          invoiceId: invoice.id,
          invoiceNumber: invoice.invoiceNumber,
          invoiceDate: invoice.invoiceDate,
        );

        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('E-Invoice JSON exported successfully')),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error generating E-Invoice: $e')),
        );
      }
    }
  }

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
  Future<void> _exportEWayBillJson(BuildContext context, WidgetRef ref) async {
    final vehicleController = TextEditingController();
    final distanceController = TextEditingController();
    final transporterController = TextEditingController();

    final result = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Generate E-Way Bill JSON'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: vehicleController,
                decoration: const InputDecoration(
                  labelText: 'Vehicle Number (e.g., DL01AB1234)',
                  hintText: 'Optional',
                ),
                textCapitalization: TextCapitalization.characters,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: distanceController,
                decoration: const InputDecoration(
                  labelText: 'Distance (KM)',
                  hintText: 'Approx. transport distance',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: transporterController,
                decoration: const InputDecoration(
                  labelText: 'Transporter ID / Name',
                  hintText: 'Optional',
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: const Text('Export JSON'),
          ),
        ],
      ),
    );

    if (result != true || !context.mounted) return;

    try {
      final settings = ref.read(settingsProvider);
      final party = await _resolveParty();
      final distance = double.tryParse(distanceController.text) ?? 0.0;

      final jsonString = EWayBillService.generateJson(
        invoice: invoice,
        party: party,
        settings: settings,
        vehicleNumber: vehicleController.text.trim().isEmpty
            ? null
            : vehicleController.text.trim().toUpperCase(),
        transporterName: transporterController.text.trim().isEmpty
            ? null
            : transporterController.text.trim(),
        distance: distance > 0 ? distance : null,
      );

      String? outputFile = await FilePicker.platform.saveFile(
        dialogTitle: 'Save E-Way Bill JSON',
        fileName: 'EWayBill_${invoice.invoiceNumber}.json',
        type: FileType.custom,
        allowedExtensions: ['json'],
      );

      if (outputFile != null) {
        final file = File(outputFile);
        await file.writeAsString(jsonString);

        await EWayBillService.saveEWayBill(
          documentNumber: invoice.invoiceNumber,
          documentType: 'INV',
          documentDate: invoice.invoiceDate,
          documentId: invoice.id,
          partyName: invoice.partyName,
          partyGstin: invoice.partyGstin,
          taxableValue: invoice.subtotal,
          cgst: invoice.totalCgst,
          sgst: invoice.totalSgst,
          igst: invoice.totalIgst,
          totalValue: invoice.grandTotal,
          vehicleNumber: vehicleController.text.trim().isEmpty
              ? null
              : vehicleController.text.trim().toUpperCase(),
          transporterName: transporterController.text.trim().isEmpty
              ? null
              : transporterController.text.trim(),
          distance: distance,
        );

        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('E-Way Bill JSON exported successfully')),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error generating E-Way Bill: $e')),
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
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            tooltip: 'Download PDF',
            onPressed: () => _downloadPdf(context, ref),
          ),
          PopupMenuButton<String>(
            tooltip: 'GST Compliance Actions',
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {
              if (value == 'einvoice') {
                _exportEInvoiceJson(context, ref);
              } else if (value == 'eway') {
                _exportEWayBillJson(context, ref);
              }
            },
            itemBuilder: (ctx) => [
              const PopupMenuItem(
                value: 'einvoice',
                child: Row(
                  children: [
                    Icon(Icons.receipt_long, size: 20),
                    SizedBox(width: 8),
                    Text('Export E-Invoice JSON'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'eway',
                child: Row(
                  children: [
                    const Icon(Icons.local_shipping, size: 20),
                    const SizedBox(width: 8),
                    Text(invoice.grandTotal > 50000
                        ? 'Export E-Way Bill (Required)'
                        : 'Export E-Way Bill JSON'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
