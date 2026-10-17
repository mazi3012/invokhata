import 'package:flutter/material.dart';
import 'package:invokhata/features/tds_tcs/data/tds_repository.dart';
import 'package:invokhata/core/database/schemas/tds_entry.dart';

class TdsTcsScreen extends StatefulWidget {
  final TdsRepository repository;

  const TdsTcsScreen({super.key, required this.repository});

  @override
  State<TdsTcsScreen> createState() => _TdsTcsScreenState();
}

class _TdsTcsScreenState extends State<TdsTcsScreen> {
  late Future<List<TdsEntry>> _tdsEntries;

  @override
  void initState() {
    super.initState();
    _tdsEntries = widget.repository.getAllTdsEntries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TDS/TCS Tracking'),
      ),
      body: FutureBuilder<List<TdsEntry>>(
        future: _tdsEntries,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData && snapshot.data!.isEmpty) {
            return const Center(child: Text('No TDS/TCS Entries Found'));
          } else {
            final tdsEntries = snapshot.data ?? [];
            return ListView.builder(
              itemCount: tdsEntries.length,
              itemBuilder: (context, index) {
                final entry = tdsEntries[index];
                return ListTile(
                  title: Text('TDS Entry: ${entry.tdsNumber}'),
                  subtitle: Text('Amount: ₹${entry.tdsAmount.toStringAsFixed(2)}'),
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
          // Navigate to add TDS/TCS entry screen
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}