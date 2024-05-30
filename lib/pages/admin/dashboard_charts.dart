import 'package:flutter/material.dart';
import 'package:home_page/molecules/charts/line_chart_molecule.dart';
import 'package:home_page/molecules/charts/bar_chart_molecule.dart';
import 'package:home_page/molecules/charts/pie_chart_molecule.dart';
import 'package:home_page/molecules/charts/scatter_chart_molecule.dart';
import 'package:home_page/molecules/charts/radar_chart_molecule.dart';
import 'package:home_page/services/mock_chart_data_provider.dart';

class DashboardChartsPage extends StatelessWidget {
  const DashboardChartsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataProvider = MockChartDataProvider();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Charts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                child: BarChartMolecule(dataProvider: dataProvider),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: PieChartMolecule(dataProvider: dataProvider),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ScatterChartMolecule(dataProvider: dataProvider),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: RadarChartMolecule(dataProvider: dataProvider),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
