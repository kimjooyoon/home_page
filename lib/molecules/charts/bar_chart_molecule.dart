import 'package:flutter/material.dart';
import 'package:home_page/atoms/charts/bar_chart_atom.dart';
import 'package:home_page/services/chart_data_provider.dart';

class BarChartMolecule extends StatelessWidget {
  final ChartDataProvider dataProvider;

  const BarChartMolecule({Key? key, required this.dataProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Bar Chart Example'),
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
