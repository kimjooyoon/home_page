import 'package:flutter/material.dart';

class CustomerAccountManagementPage extends StatelessWidget {
  const CustomerAccountManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Account Management'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Manage Customer Accounts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // 임시 데이터 수
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('Customer #$index'),
                      subtitle: Text('Email: customer$index@example.com'),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // 고객 계정 삭제 로직
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
