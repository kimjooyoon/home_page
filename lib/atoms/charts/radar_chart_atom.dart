import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class RadarChartAtom extends StatelessWidget {
  final List<RadarDataSet> dataSets;

  const RadarChartAtom({Key? key, required this.dataSets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadarChart(
      RadarChartData(
        dataSets: dataSets,
      ),
    );
  }
}
