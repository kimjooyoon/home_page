import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PieChartAtom extends StatelessWidget {
  final List<PieChartSectionData> sections;

  const PieChartAtom({super.key, required this.sections});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyLarge?.color ?? Colors.black;

    return PieChart(
      PieChartData(
        sections: sections.map((section) {
          return PieChartSectionData(
            color: section.color,
            value: section.value,
            title: section.title,
            radius: section.radius,
            titleStyle: TextStyle(
              color: textColor,
              fontSize: 16,
            ),
            badgeWidget: section.badgeWidget,
            badgePositionPercentageOffset: section.badgePositionPercentageOffset,
          );
        }).toList(),
      ),
    );
  }
}
