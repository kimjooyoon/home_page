import 'package:flutter/material.dart';
import 'package:home_page/molecules/cards/transaction_card.dart';

class TransactionList extends StatelessWidget {
  final int itemCount;
  final VoidCallback onEdit;

  const TransactionList({super.key, required this.itemCount, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return TransactionCard(index: index, onEdit: onEdit);
      },
    );
  }
}
