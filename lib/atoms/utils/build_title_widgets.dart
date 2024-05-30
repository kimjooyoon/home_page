import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

Widget buildTitleWidgets(double value, TitleMeta meta, {bool isLeftTitle = false}) {
  const style = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 10,
  );
  String text = isLeftTitle ? value.toInt().toString() : value.toString();
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 4, // Space between the axis and the title
    child: Text(text, style: style),
  );
}
