import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../widgets/cs_app_bar.dart';

class PieChartDoisView extends StatefulWidget {
  const PieChartDoisView({super.key});

  @override
  State<PieChartDoisView> createState() => _PieChartDoisViewState();
}

class _PieChartDoisViewState extends State<PieChartDoisView> {
  Map<String, double> dataMap = {
    'Chocolate': 20,
    'Café': 15,
    'Musse': 25,
    'Lasanha': 2,
  };

  final colorList = <Color>[
    const Color(0xFF491500),
    const Color(0xFF000000),
    const Color(0xFFCD8181),
    const Color(0xFFFD5B5B),
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
          Flexible(
            child: Container(
              margin: const EdgeInsets.all(15),
              child: PieChart(
                chartType: ChartType.ring,
                dataMap: dataMap,
                animationDuration: const Duration(milliseconds: 800),
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 3.2,
                colorList: colorList,
                initialAngleInDegree: 0,
                ringStrokeWidth: 32,
                centerText: 'Comidas',
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
                  showChartValuesOutside: true,
                  decimalPlaces: 1,
                ),
                // gradientList: ---To add gradient colors---
                // emptyColorGradient: ---Empty Color gradient---
              ),
            ),
          ),
        ],
      ),
    );
  }
}
