// pages/transactions_page.dart
import 'package:flutter/material.dart';
import 'package:home_page/molecules/cards/transaction_card.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 10, // 예제 데이터 개수
          itemBuilder: (context, index) {
            return TransactionCard(
              index: index,
              onEdit: () {
                // 거래 수정 로직
              },
            );
          },
        ),
      ),
    );
  }
}
