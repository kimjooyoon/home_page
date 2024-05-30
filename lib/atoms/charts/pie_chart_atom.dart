import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PieChartAtom extends StatelessWidget {
  final List<PieChartSectionData> sections;

  const PieChartAtom({Key? key, required this.sections}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: sections,
      ),
    );
  }
}
