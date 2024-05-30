import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartAtom extends StatelessWidget {
  final List<BarChartGroupData> barGroups;

  const BarChartAtom({Key? key, required this.barGroups}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        gridData: FlGridData(show: true),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: true),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: true),
          ),
        ),
        borderData: FlBorderData(show: true),
        barGroups: barGroups,
      ),
    );
  }
}
