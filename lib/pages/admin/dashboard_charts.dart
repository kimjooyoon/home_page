import 'package:flutter/material.dart';
import 'package:home_page/molecules/charts/line_chart_molecule.dart';
import 'package:home_page/services/mock_chart_data_provider.dart'; // Mock 데이터 제공자를 import

class DashboardChartsPage extends StatelessWidget {
  const DashboardChartsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataProvider =
        MockChartDataProvider(); // 실제 데이터 제공자 대신 모의 데이터 제공자를 사용

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Charts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Manage Dashboard Charts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: LineChartMolecule(dataProvider: dataProvider),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: LineChartMolecule(dataProvider: dataProvider),
                    ),
                  ),
                  // Add more chart molecules here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
