import 'package:flutter/material.dart';

class TransactionManagementPage extends StatelessWidget {
  const TransactionManagementPage({Key? key}) : super(key: key);

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
              child: ListView.builder(
                itemCount: 10, // 임시 데이터 수
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('Transaction #$index'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Amount: \$${index * 100}'),
                          Text('Date: ${DateTime.now().subtract(Duration(days: index))}'),
                          Text('Details: Transaction details here'),
                          Text('Assigned To: Employee $index'),
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // 거래 수정 로직
                        },
                      ),
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
