import 'package:flutter/material.dart';
import 'package:invokhata/features/eway_bill/data/eway_bill_repository.dart';
import 'package:invokhata/core/database/schemas/eway_bill.dart';

class EWayBillScreen extends StatefulWidget {
  final EWayBillRepository repository;

  const EWayBillScreen({super.key, required this.repository});

  @override
  State<EWayBillScreen> createState() => _EWayBillScreenState();
}

class _EWayBillScreenState extends State<EWayBillScreen> {
  late Future<List<EWayBill>> _ewayBills;

  @override
  void initState() {
    super.initState();
    _ewayBills = widget.repository.getAllEWayBills();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Way Bills'),
      ),
      body: FutureBuilder<List<EWayBill>>(
        future: _ewayBills,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData && snapshot.data!.isEmpty) {
            return const Center(child: Text('No E-Way Bills Found'));
          } else {
            final ewayBills = snapshot.data ?? [];
            return ListView.builder(
              itemCount: ewayBills.length,
              itemBuilder: (context, index) {
                final ewayBill = ewayBills[index];
                return ListTile(
                  title: Text('E-Way Bill: ${ewayBill.ewayBillNumber ?? '-'}'),
                  subtitle: Text('Valid Until: ${ewayBill.validUpto?.toLocal().toIso8601String() ?? '-'}'),
                  onTap: () {
                    // Navigate to details or edit screen
                  },
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GenerateEWayBillScreen(repository: widget.repository)),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class GenerateEWayBillScreen extends StatelessWidget {
  final EWayBillRepository repository;

  const GenerateEWayBillScreen({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate E-Way Bill'),
      ),
      body: const Center(
        child: Text('E-Way Bill generation form goes here'),
      ),
    );
  }
}