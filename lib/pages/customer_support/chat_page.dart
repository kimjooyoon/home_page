import 'package:flutter/material.dart';
import 'package:home_page/organisms/lists/message_list.dart';
import 'package:home_page/atoms/spacer/vertical_spacer.dart';
import 'package:home_page/atoms/button/custom_button.dart';

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
            const Expanded(
              child: MessageList(itemCount: 10),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Type your message',
                border: OutlineInputBorder(),
              ),
            ),
            const VerticalSpacer(size: VSpacerSize.small),
            CustomButton(
              text: 'Send Message',
              onPressed: () {
                // 메일 전송 로직
              },
            ),
          ],
        ),
      ),
    );
  }
}
