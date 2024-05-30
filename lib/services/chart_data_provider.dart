import 'package:fl_chart/fl_chart.dart';

abstract class ChartDataProvider {
  List<FlSpot> getLineChartData();
// 다른 차트 데이터를 위한 메서드 추가 가능
  List<BarChartGroupData> getBarChartData();
  List<PieChartSectionData> getPieChartData();
  List<ScatterSpot> getScatterChartData();
  List<RadarDataSet> getRadarChartData();
}
