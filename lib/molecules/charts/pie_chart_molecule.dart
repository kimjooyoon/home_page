import 'package:flutter/material.dart';
import 'package:home_page/atoms/charts/pie_chart_atom.dart';
import 'package:home_page/services/chart_data_provider.dart';

class PieChartMolecule extends StatelessWidget {
  final ChartDataProvider dataProvider;

  const PieChartMolecule({super.key, required this.dataProvider});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Pie Chart Example'),
        SizedBox(
          height: 200,
          child: PieChartAtom(sections: dataProvider.getPieChartData(),),
        ),
      ],
    );
  }
}
