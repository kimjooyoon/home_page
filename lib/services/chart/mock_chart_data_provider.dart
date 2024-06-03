import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:home_page/services/chart/chart_data_provider.dart';

class MockChartDataProvider implements ChartDataProvider {
  @override
  List<FlSpot> getLineChartData() {
    return [
      const FlSpot(0, 1),
      const FlSpot(1, 3),
      const FlSpot(2, 2),
      const FlSpot(3, 5),
      const FlSpot(4, 4),
      const FlSpot(5, 7),
    ];
  }

  @override
  List<BarChartGroupData> getBarChartData() {
    return [
      BarChartGroupData(
        x: 0,
        barRods: [BarChartRodData(toY: 8, color: Colors.red)],
      ),
      BarChartGroupData(
        x: 1,
        barRods: [BarChartRodData(toY: 10, color: Colors.blue)],
      ),
    ];
  }

  @override
  List<PieChartSectionData> getPieChartData() {
    return [
      PieChartSectionData(value: 40, color: Colors.blue, title: '40%'),
      PieChartSectionData(value: 30, color: Colors.red, title: '30%'),
      PieChartSectionData(value: 15, color: Colors.green, title: '15%'),
      PieChartSectionData(value: 15, color: Colors.orange, title: '15%'),
    ];
  }

  @override
  List<ScatterSpot> getScatterChartData() {
    return [
      ScatterSpot(1, 1),
      ScatterSpot(2, 2),
      ScatterSpot(3, 3),
    ];
  }

  @override
  List<RadarDataSet> getRadarChartData() {
    return [
      RadarDataSet(
        dataEntries: [
          const RadarEntry(value: 1),
          const RadarEntry(value: 3),
          const RadarEntry(value: 5),
          const RadarEntry(value: 7),
          const RadarEntry(value: 9),
        ],
        borderColor: Colors.blue,
        fillColor: Colors.blue.withOpacity(0.4),
      ),
      RadarDataSet(
        dataEntries: [
          const RadarEntry(value: 2),
          const RadarEntry(value: 4),
          const RadarEntry(value: 6),
          const RadarEntry(value: 8),
          const RadarEntry(value: 10),
        ],
        borderColor: Colors.red,
        fillColor: Colors.red.withOpacity(0.4),
      ),
    ];
  }
}
