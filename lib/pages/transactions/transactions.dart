import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 10, // 예제 데이터 개수
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('Transaction #$index'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Amount: \$${index * 100}'),
                    Text(
                        'Date: ${DateTime.now().subtract(Duration(days: index))}'),
                    Text('Details: Transaction details here'),
                    Text('Assigned To: Employee $index'),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // 거래 수정 로직
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
