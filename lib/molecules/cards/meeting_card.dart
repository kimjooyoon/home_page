import 'package:flutter/material.dart';
import 'package:home_page/atoms/title/meeting_title.dart';
import 'package:home_page/atoms/title/meeting_subtitle.dart';

class MeetingCard extends StatelessWidget {
  final int index;
  final VoidCallback onEdit;

  const MeetingCard({super.key, required this.index, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: MeetingTitle(title: 'Meeting #$index'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MeetingSubtitle(
                subtitle:
                    'Date: ${DateTime.now().subtract(Duration(days: index))}'),
            const MeetingSubtitle(subtitle: 'Attendees: Attendee names here'),
            const MeetingSubtitle(subtitle: 'Details: Meeting details here'),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: onEdit,
        ),
      ),
    );
  }
}
