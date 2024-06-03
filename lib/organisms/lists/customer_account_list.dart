import 'package:flutter/material.dart';
import 'package:home_page/molecules/cards/customer_account_card.dart';

class CustomerAccountList extends StatelessWidget {
  final int itemCount;
  final VoidCallback onEdit;

  const CustomerAccountList({super.key, required this.itemCount, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return CustomerAccountCard(index: index, onEdit: onEdit);
      },
    );
  }
}
