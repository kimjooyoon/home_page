import 'package:flutter/material.dart';
import 'package:home_page/atoms/charts/line_chart_atom.dart';
import 'package:home_page/services/chart_data_provider.dart';

class LineChartMolecule extends StatelessWidget {
  final ChartDataProvider dataProvider;

  const LineChartMolecule({Key? key, required this.dataProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Line Chart Example'),
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
