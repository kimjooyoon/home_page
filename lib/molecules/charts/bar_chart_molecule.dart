import 'package:flutter/material.dart';
import 'package:home_page/atoms/charts/bar_chart_atom.dart';
import 'package:home_page/services/chart/chart_data_provider.dart';

class BarChartMolecule extends StatelessWidget {
  final ChartDataProvider dataProvider;

  const BarChartMolecule({super.key, required this.dataProvider});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Bar Chart Example'),
        SizedBox(
          height: 200,
          child: BarChartAtom(
            barGroups: dataProvider.getBarChartData(),
          ),
        ),
      ],
    );
  }
}
