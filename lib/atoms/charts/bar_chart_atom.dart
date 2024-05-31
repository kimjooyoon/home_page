import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:home_page/atoms/utils/build_title_widgets.dart';

class BarChartAtom extends StatelessWidget {
  final List<BarChartGroupData> barGroups;

  const BarChartAtom({super.key, required this.barGroups});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;
    final barColor = theme.primaryColor;
    final gridColor = isDarkMode ? theme.dividerColor : theme.dividerColor;
    final borderColor = isDarkMode ? theme.dividerColor : theme.dividerColor;
    final textColor = theme.textTheme.bodyLarge?.color ?? Colors.black;

    return BarChart(
      BarChartData(
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: gridColor,
              strokeWidth: 1,
            );
          },
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: gridColor,
              strokeWidth: 1,
            );
          },
        ),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => buildTitleWidgets(value, meta, isLeftTitle: true, textColor: textColor),
              interval: 1,
              reservedSize: 28,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => buildTitleWidgets(value, meta, textColor: textColor),
              interval: 1,
            ),
          ),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
        ),
        barGroups: barGroups.map((group) {
          return BarChartGroupData(
            x: group.x,
            barsSpace: group.barsSpace,
            barRods: group.barRods.map((rod) {
              return BarChartRodData(
                toY: rod.toY,
                color: barColor,
                width: rod.width,
                backDrawRodData: rod.backDrawRodData,
                borderRadius: rod.borderRadius,
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}
