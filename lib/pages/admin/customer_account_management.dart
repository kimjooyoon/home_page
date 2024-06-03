import 'package:flutter/material.dart';
import 'package:home_page/organisms/lists/customer_account_list.dart';

class CustomerAccountManagementPage extends StatelessWidget {
  const CustomerAccountManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Account Management'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomerAccountList(
          itemCount: 10,
          onEdit: () {
            // 고객 계정 수정 로직
          },
        ),
      ),
    );
  }
}
