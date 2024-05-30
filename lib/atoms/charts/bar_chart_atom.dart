import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:home_page/atoms/theme/design_tokens.dart';
import 'package:home_page/atoms/utils/build_title_widgets.dart';

class BarChartAtom extends StatelessWidget {
  final List<BarChartGroupData> barGroups;

  const BarChartAtom({Key? key, required this.barGroups}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final barColor = isDarkMode ? DesignTokens.textColor : DesignTokens.primaryColor;

    return BarChart(
      BarChartData(
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: isDarkMode ? DesignTokens.darkModeGridColor : DesignTokens.lightModeGridColor,
              strokeWidth: 1,
            );
          },
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: isDarkMode ? DesignTokens.darkModeGridColor : DesignTokens.lightModeGridColor,
              strokeWidth: 1,
            );
          },
        ),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => buildTitleWidgets(value, meta, isLeftTitle: true),
              interval: 1,
              reservedSize: 28,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: buildTitleWidgets,
              interval: 1,
            ),
          ),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: isDarkMode ? DesignTokens.darkModeBorderColor : DesignTokens.lightModeBorderColor,
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
