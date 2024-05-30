import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:home_page/atoms/theme/design_tokens.dart';
import 'package:home_page/atoms/utils/build_title_widgets.dart';

class LineChartAtom extends StatelessWidget {
  final List<FlSpot> spots;

  const LineChartAtom({Key? key, required this.spots}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final lineColor = isDarkMode ? DesignTokens.textColor : DesignTokens.primaryColor;

    return LineChart(
      LineChartData(
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
        minX: 0,
        maxX: 5,
        minY: 0,
        maxY: 7,
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            color: lineColor,
            barWidth: 5,
            belowBarData: BarAreaData(show: false),
            dotData: FlDotData(show: false),
          ),
        ],
      ),
    );
  }
}
