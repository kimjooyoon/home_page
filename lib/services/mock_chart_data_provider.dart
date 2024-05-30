import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:home_page/services/chart_data_provider.dart';

class MockChartDataProvider implements ChartDataProvider {
  @override
  List<FlSpot> getLineChartData() {
    return [
      FlSpot(0, 1),
      FlSpot(1, 3),
      FlSpot(2, 2),
      FlSpot(3, 5),
      FlSpot(4, 4),
      FlSpot(5, 7),
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
          RadarEntry(value: 1),
          RadarEntry(value: 3),
          RadarEntry(value: 5),
          RadarEntry(value: 7),
          RadarEntry(value: 9),
        ],
        borderColor: Colors.blue,
        fillColor: Colors.blue.withOpacity(0.4),
      ),
      RadarDataSet(
        dataEntries: [
          RadarEntry(value: 2),
          RadarEntry(value: 4),
          RadarEntry(value: 6),
          RadarEntry(value: 8),
          RadarEntry(value: 10),
        ],
        borderColor: Colors.red,
        fillColor: Colors.red.withOpacity(0.4),
      ),
    ];
  }
}
