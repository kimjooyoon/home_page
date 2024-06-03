import 'package:flutter/material.dart';
import 'package:home_page/atoms/charts/line_chart_atom.dart';
import 'package:home_page/services/chart/chart_data_provider.dart';

class LineChartMolecule extends StatelessWidget {
  final ChartDataProvider dataProvider;

  const LineChartMolecule({super.key, required this.dataProvider});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Line Chart Example', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(
          height: 200,
          child: LineChartAtom(
            spots: dataProvider.getLineChartData(),
          ),
        ),
      ],
    );
  }
}
