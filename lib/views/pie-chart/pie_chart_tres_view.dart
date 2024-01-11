import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../widgets/cs_app_bar.dart';

class PieChartTresView extends StatefulWidget {
  const PieChartTresView({super.key});

  @override
  State<PieChartTresView> createState() => _PieChartTresViewState();
}

class _PieChartTresViewState extends State<PieChartTresView> {
  Map<String, double> dataMap = {
    'Laranja': 10,
    'Limão': 8,
    'Melancia': 5,
    'Pera': 2,
  };

  final gradientList = <List<Color>>[
    [
      const Color.fromARGB(255, 238, 109, 4),
      const Color.fromRGBO(254, 154, 92, 1),
    ],
    [
      const Color.fromRGBO(98, 230, 157, 1),
      const Color.fromRGBO(41, 156, 93, 1),
    ],
    [
      const Color.fromRGBO(255, 0, 0, 1),
      const Color.fromRGBO(12, 102, 0, 1),
    ],
    [
      const Color.fromRGBO(163, 98, 0, 1),
      const Color.fromRGBO(99, 50, 9, 1),
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'pie_chart',
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Flexible(
              child: PieChart(
                dataMap: dataMap,
                animationDuration: const Duration(milliseconds: 800),
                chartLegendSpacing: 40,
                chartRadius: MediaQuery.of(context).size.width / 3.2,
                initialAngleInDegree: 0,
                chartType: ChartType.disc,
                ringStrokeWidth: 32,
                legendOptions: const LegendOptions(
                  showLegendsInRow: false,
                  legendPosition: LegendPosition.right,
                  showLegends: true,
                  legendShape: BoxShape.circle,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: true,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false,
                  decimalPlaces: 1,
                ),
                gradientList: gradientList,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
