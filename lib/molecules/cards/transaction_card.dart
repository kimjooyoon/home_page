// molecules/transaction_card.dart
import 'package:flutter/material.dart';
import 'package:home_page/atoms/text/transaction_text.dart';

class TransactionCard extends StatelessWidget {
  final int index;
  final VoidCallback onEdit;

  const TransactionCard({super.key, required this.index, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Transaction #$index'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TransactionText(content: 'Amount: \$${index * 100}'),
            TransactionText(content: 'Date: ${DateTime.now().subtract(Duration(days: index))}'),
            const TransactionText(content: 'Details: Transaction details here'),
            TransactionText(content: 'Assigned To: Employee $index'),
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
