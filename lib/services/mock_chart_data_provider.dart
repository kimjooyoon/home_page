import 'package:fl_chart/fl_chart.dart';
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
// 다른 차트 데이터 메서드 구현 가능
}
