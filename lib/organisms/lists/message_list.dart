import 'package:flutter/material.dart';
import 'package:home_page/molecules/tile/message_tile.dart';

class MessageList extends StatelessWidget {
  final int itemCount;

  const MessageList({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return MessageTile(
          title: 'Customer Message #$index',
          subtitle: 'Message content here...',
        );
      },
    );
  }
}
