import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transaction History',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // 임시 데이터 수
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('Transaction #$index'),
                      subtitle: Text('Detail of transaction #$index'),
                      trailing: Text('Amount: \$${index * 10}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
