import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ScatterChartAtom extends StatelessWidget {
  final List<ScatterSpot> scatterSpots;

  const ScatterChartAtom({Key? key, required this.scatterSpots}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScatterChart(
      ScatterChartData(
        scatterSpots: scatterSpots,
      ),
    );
  }
}
