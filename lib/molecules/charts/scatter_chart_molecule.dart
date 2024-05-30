import 'package:flutter/material.dart';
import 'package:home_page/atoms/charts/scatter_chart_atom.dart';
import 'package:home_page/services/chart_data_provider.dart';

class ScatterChartMolecule extends StatelessWidget {
  final ChartDataProvider dataProvider;

  const ScatterChartMolecule({Key? key, required this.dataProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Scatter Chart Example'),
        SizedBox(
          height: 200,
          child: ScatterChartAtom(scatterSpots: dataProvider.getScatterChartData(),),
        ),
      ],
    );
  }
}
