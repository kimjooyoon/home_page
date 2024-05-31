import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ScatterChartAtom extends StatelessWidget {
  final List<ScatterSpot> scatterSpots;

  const ScatterChartAtom({super.key, required this.scatterSpots});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final gridColor = theme.dividerColor;
    final textColor = theme.textTheme.bodyLarge?.color ?? Colors.black;
    final textStyle = TextStyle(color: textColor, fontSize: 10); // 텍스트 스타일 추가

    return ScatterChart(
      ScatterChartData(
        scatterSpots: scatterSpots,
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
              getTitlesWidget: (value, meta) {
                return Text(
                  value.toStringAsFixed(1), // 소수점 조정
                  style: textStyle,
                );
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                return Text(
                  value.toStringAsFixed(1), // 소수점 조정
                  style: textStyle,
                );
              },
              interval: 1, // 간격 조정
            ),
          ),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: gridColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}
