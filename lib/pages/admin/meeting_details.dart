import 'package:flutter/material.dart';
import 'package:home_page/organisms/lists/meeting_list.dart';

class MeetingDetailsPage extends StatelessWidget {
  const MeetingDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meeting Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MeetingList(
          itemCount: 10,
          onEdit: () {
            // 미팅 내용 수정 로직
          },
        ),
      ),
    );
  }
}
