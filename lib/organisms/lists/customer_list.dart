import 'package:flutter/material.dart';
import 'package:home_page/molecules/cards/customer_card.dart';

class CustomerList extends StatelessWidget {
  final int itemCount;
  final VoidCallback onEdit;

  const CustomerList({super.key, required this.itemCount, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return CustomerCard(index: index, onEdit: onEdit);
      },
    );
  }
}
