import 'package:flutter/material.dart';
import 'package:home_page/atoms/title/customer_account_title.dart';
import 'package:home_page/atoms/title/customer_account_subtitle.dart';

class CustomerAccountCard extends StatelessWidget {
  final int index;
  final VoidCallback onEdit;

  const CustomerAccountCard(
      {super.key, required this.index, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: CustomerAccountTitle(title: 'Customer #$index'),
        subtitle:
            const CustomerAccountSubtitle(subtitle: 'Customer details here...'),
        trailing: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: onEdit,
        ),
      ),
    );
  }
}
