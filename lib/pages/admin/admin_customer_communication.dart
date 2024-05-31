import 'package:flutter/material.dart';
import 'package:home_page/templates/base/base_template.dart';

class AdminCustomerCommunicationPage extends StatelessWidget {
  const AdminCustomerCommunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTemplate(
      title: 'Customer Communication',
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Communicate with Customers',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
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
