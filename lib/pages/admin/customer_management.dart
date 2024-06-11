import 'package:flutter/material.dart';
import 'package:home_page/atoms/spacer/vertical_spacer.dart';
import 'package:home_page/atoms/text/title_text.dart';
import 'package:home_page/organisms/lists/customer_list.dart';

class CustomerManagementPage extends StatelessWidget {
  const CustomerManagementPage({super.key});

  void _editCustomer() {
    // 고객사 수정 로직
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Management'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleText(text: 'Manage Customers'),
            const VerticalSpacer(size: VSpacerSize.medium),
            Expanded(
              child: CustomerList(
                itemCount: 10, // 임시 데이터 수
                onEdit: _editCustomer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
