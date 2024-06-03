import 'package:flutter/material.dart';
import 'package:home_page/atoms/text/message_text.dart';

class MessageTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const MessageTile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: MessageText(text: title),
      subtitle: MessageText(text: subtitle),
    );
  }
}
