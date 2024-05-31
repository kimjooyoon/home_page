import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:home_page/atoms/utils/build_title_widgets.dart';

class LineChartAtom extends StatelessWidget {
  final List<FlSpot> spots;

  const LineChartAtom({super.key, required this.spots});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lineColor = theme.primaryColor;
    final gridAndBorderColor = theme.dividerColor;
    final textColor = theme.textTheme.bodyLarge?.color ?? Colors.black;

    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: gridAndBorderColor,
              strokeWidth: 1,
            );
          },
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: gridAndBorderColor,
              strokeWidth: 1,
            );
          },
        ),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => buildTitleWidgets(value, meta,
                  isLeftTitle: true, textColor: textColor),
              interval: 1,
              reservedSize: 28,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) =>
                  buildTitleWidgets(value, meta, textColor: textColor),
              interval: 1,
            ),
          ),
          topTitles:
              const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles:
              const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: gridAndBorderColor,
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
            dotData: const FlDotData(show: false),
          ),
        ],
      ),
    );
  }
}
