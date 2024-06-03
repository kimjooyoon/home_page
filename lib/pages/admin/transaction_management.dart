import 'package:flutter/material.dart';
import 'package:home_page/organisms/lists/transaction_list.dart';

class TransactionManagementPage extends StatelessWidget {
  const TransactionManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Management'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Manage Transactions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: TransactionList(
                itemCount: 10,
                onEdit: () {
                  // 거래 수정 로직
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
