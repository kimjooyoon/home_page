import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Technology Stack'),
            _buildTechStack(),
            _buildSectionTitle('Solutions & Projects'),
            _buildProjects(),
            _buildSectionTitle('Services'),
            _buildServices(),
            _buildSectionTitle('Solution/Service Preview'),
            _buildPreview(),
            _buildSectionTitle('Vision'),
            _buildVision(),
            _buildSectionTitle('Commitment to Customers'),
            _buildCommitment(),
            _buildSectionTitle('Beliefs'),
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

  Widget _buildTechStack() {
    return Container(
      height: 150,
      color: Colors.grey[200],
      child: const Center(child: Text('Technology Stack Cards')),
    );
  }

  Widget _buildProjects() {
    return Container(
      height: 150,
      color: Colors.grey[200],
      child: const Center(child: Text('Projects Cards')),
    );
  }

  Widget _buildServices() {
    return Container(
      height: 150,
      color: Colors.grey[200],
      child: const Center(child: Text('Services Description')),
    );
  }

  Widget _buildPreview() {
    return Container(
      height: 150,
      color: Colors.grey[200],
      child: const Center(child: Text('Solution/Service Preview')),
    );
  }

  Widget _buildVision() {
    return Container(
      height: 150,
      color: Colors.grey[200],
      child: const Center(child: Text('Vision Description')),
    );
  }

  Widget _buildCommitment() {
    return Container(
      height: 150,
      color: Colors.grey[200],
      child: const Center(child: Text('Commitment Description')),
    );
  }
}
