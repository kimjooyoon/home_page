import 'package:flutter/material.dart';

class AdminCustomerCommunicationPage extends StatelessWidget {
  const AdminCustomerCommunicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Communication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Communicate with Customers',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter your message',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // 메세지 전송 로직
              },
              child: const Text('Send Message'),
            ),
          ],
        ),
      ),
    );
  }
}
