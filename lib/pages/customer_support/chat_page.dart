import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Support'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10, // 예제 데이터 개수
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Customer Message #$index'),
                    subtitle: Text('Message content here...'),
                  );
                },
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Type your message',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                // 메일 전송 로직
              },
              child: Text('Send Message'),
            ),
          ],
        ),
      ),
    );
  }
}
