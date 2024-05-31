import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Support'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10, // 예제 데이터 개수
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Customer Message #$index'),
                    subtitle: const Text('Message content here...'),
                  );
                },
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Type your message',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                // 메일 전송 로직
              },
              child: const Text('Send Message'),
            ),
          ],
        ),
      ),
    );
  }
}
