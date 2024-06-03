import 'package:flutter/material.dart';
import 'package:home_page/molecules/cards/meeting_card.dart';

class MeetingList extends StatelessWidget {
  final int itemCount;
  final VoidCallback onEdit;

  const MeetingList({super.key, required this.itemCount, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return MeetingCard(index: index, onEdit: onEdit);
      },
    );
  }
}
