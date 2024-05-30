import 'package:flutter/material.dart';
import 'package:home_page/atoms/charts/radar_chart_atom.dart';
import 'package:home_page/services/chart_data_provider.dart';

class RadarChartMolecule extends StatelessWidget {
  final ChartDataProvider dataProvider;

  const RadarChartMolecule({Key? key, required this.dataProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Radar Chart Example'),
        SizedBox(
          height: 200,
          child: RadarChartAtom(dataSets: dataProvider.getRadarChartData(),),
        ),
      ],
    );
  }
}
