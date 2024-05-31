import 'package:flutter/material.dart';
import 'package:home_page/templates/base/base_template.dart';
import 'package:home_page/organisms/communication/customer_communication.dart';

class AdminCustomerCommunicationPage extends StatelessWidget {
  const AdminCustomerCommunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseTemplate(
      title: 'Customer Communication',
      child: CustomerCommunication(),
    );
  }
}
