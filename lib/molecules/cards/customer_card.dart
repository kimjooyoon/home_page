import 'package:flutter/material.dart';
import 'package:home_page/atoms/text/title_text.dart';
import 'package:home_page/atoms/text/subtitle_text.dart';

class CustomerCard extends StatelessWidget {
  final int index;
  final VoidCallback onEdit;

  const CustomerCard({super.key, required this.index, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: TitleText(text: 'Customer Company #$index'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubtitleText(text: 'Contact: contact$index@example.com'),
            const SubtitleText(text: 'Request: Customer request details here'),
            SubtitleText(text: 'Website: www.customer$index.com'),
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
