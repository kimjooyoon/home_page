import 'package:flutter/material.dart';
import 'package:home_page/organisms/lists/meeting_list.dart';
import 'package:home_page/templates/base/base_template.dart';

class MeetingDetailsPage extends StatelessWidget {
  const MeetingDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTemplate(
      title: 'Meeting Details',
      child: MeetingList(
        itemCount: 10,
        onEdit: () {
          // 미팅 내용 수정 로직
        },
      ),
    );
  }
}
