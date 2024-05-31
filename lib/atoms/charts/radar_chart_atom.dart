import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class RadarChartAtom extends StatelessWidget {
  final List<RadarDataSet> dataSets;

  const RadarChartAtom({super.key, required this.dataSets});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyLarge?.color ?? Colors.black;
    final gridColor = theme.dividerColor;

    return RadarChart(
      RadarChartData(
        dataSets: dataSets,
        radarShape: RadarShape.polygon,
        titleTextStyle: TextStyle(color: textColor, fontSize: 14),
        radarBackgroundColor: theme.scaffoldBackgroundColor,
        radarBorderData: BorderSide(color: gridColor),
        radarTouchData: RadarTouchData(enabled: true),
        getTitle: (index, angle) {
          return RadarChartTitle(
            text: 'Title ${index + 1}',
            angle: angle,
            positionPercentageOffset: 0.1, // 타이틀 위치 조정
          );
        },
        gridBorderData: BorderSide(color: gridColor, width: 2, strokeAlign: 1),
        tickBorderData: BorderSide(color: gridColor, width: 2, strokeAlign: 1),
        tickCount: 6,
        ticksTextStyle: TextStyle(color: textColor, fontSize: 10),
        titlePositionPercentageOffset: 0.3, // 타이틀 위치 조정
      ),
    );
  }
}
