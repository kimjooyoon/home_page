import 'package:flutter/material.dart';

class CustomerAccountManagementPage extends StatelessWidget {
  const CustomerAccountManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Account Management'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 10, // 예제 데이터 개수
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('Customer #$index'),
                subtitle: const Text('Customer details here...'),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    // 고객 계정 수정 로직
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
