import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../widgets/cs_app_bar.dart';

class PieChartQuatroView extends StatefulWidget {
  const PieChartQuatroView({super.key});

  @override
  State<PieChartQuatroView> createState() => _PieChartQuatroViewState();
}

class _PieChartQuatroViewState extends State<PieChartQuatroView> {
  final dataMap = <String, double>{
    'Água': 50,
  };

  final colorList = <Color>[
    Colors.blueAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'pie_chart',
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Flexible(
              child: PieChart(
                dataMap: dataMap,
                chartType: ChartType.ring,
                baseChartColor: Colors.grey.shade400.withOpacity(0.15),
                colorList: colorList,
                chartValuesOptions: const ChartValuesOptions(
                  showChartValuesInPercentage: false,
                  showChartValueBackground: true,
                  showChartValues: true,
                  showChartValuesOutside: false,
                ),
                totalValue: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
