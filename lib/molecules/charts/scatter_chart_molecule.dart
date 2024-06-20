import 'package:flutter/material.dart';
import 'package:home_page/atoms/charts/scatter_chart_atom.dart';
import 'package:home_page/services/chart/chart_data_provider.dart';

class ScatterChartMolecule extends StatelessWidget {
  final ChartDataProvider dataProvider;

  const ScatterChartMolecule({super.key, required this.dataProvider});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Scatter Chart Example'),
        SizedBox(
          height: 200,
          child: ScatterChartAtom(
            scatterSpots: dataProvider.getScatterChartData(),
          ),
        ),
      ],
    );
  }
}
