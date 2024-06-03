import 'package:flutter/material.dart';
import 'package:home_page/atoms/charts/radar_chart_atom.dart';
import 'package:home_page/services/chart/chart_data_provider.dart';

class RadarChartMolecule extends StatelessWidget {
  final ChartDataProvider dataProvider;

  const RadarChartMolecule({super.key, required this.dataProvider});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Radar Chart Example'),
        SizedBox(
          height: 200,
          child: RadarChartAtom(dataSets: dataProvider.getRadarChartData(),),
        ),
      ],
    );
  }
}
