import 'package:flutter/material.dart';

class CustomerSupportPage extends StatelessWidget {
  const CustomerSupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Support'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Chat with Us'),
            _buildChatButton(),
            _buildSectionTitle('FAQ & Q&A'),
            _buildFAQ(),
            _buildSectionTitle('Send Us a Question'),
            _buildQuestionForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildChatButton() {
    return ElevatedButton(
      onPressed: () {
        // Implement chat functionality here
      },
      child: const Text('Start Chat'),
    );
  }

  Widget _buildFAQ() {
    return Container(
      height: 150,
      color: Colors.grey[200],
      child: const Center(child: Text('FAQ Section')),
    );
  }

  Widget _buildQuestionForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: const InputDecoration(labelText: 'Your Question'),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Implement email sending functionality here
          },
          child: const Text('Send Question'),
        ),
      ],
    );
  }
}
