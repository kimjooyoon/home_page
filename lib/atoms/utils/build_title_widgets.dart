import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

Widget buildTitleWidgets(double value, TitleMeta meta,
    {bool isLeftTitle = false, required Color textColor}) {
  final style = TextStyle(
    color: textColor,
    fontWeight: FontWeight.bold,
    fontSize: 10,
  );

  Widget text = Text(value.toInt().toString(), style: style);
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 4, // Space between the axis and the title
    child: text,
  );
}
