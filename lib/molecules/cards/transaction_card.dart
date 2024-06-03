import 'package:flutter/material.dart';
import 'package:home_page/atoms/title/transaction_title.dart';
import 'package:home_page/atoms/title/transaction_subtitle.dart';

class TransactionCard extends StatelessWidget {
  final int index;
  final VoidCallback onEdit;

  const TransactionCard({super.key, required this.index, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: TransactionTitle(title: 'Transaction #$index'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TransactionSubtitle(subtitle: 'Amount: \$${index * 100}'),
            TransactionSubtitle(subtitle: 'Date: ${DateTime.now().subtract(Duration(days: index))}'),
            const TransactionSubtitle(subtitle: 'Details: Transaction details here'),
            TransactionSubtitle(subtitle: 'Assigned To: Employee $index'),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: onEdit,
        ),
      ),
    );
  }
}
