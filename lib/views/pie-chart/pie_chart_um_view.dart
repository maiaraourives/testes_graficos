import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../widgets/cs_app_bar.dart';

class PieChartUmView extends StatefulWidget {
  const PieChartUmView({super.key});

  @override
  State<PieChartUmView> createState() => _PieChartUmViewState();
}

class _PieChartUmViewState extends State<PieChartUmView> {
  Map<String, double> dataMap = {
    'Mães': 14,
    'Pais': 14,
    'Filhos': 2,
    'Filhas': 7,
  };

  final colorList = <Color>[
    const Color.fromARGB(255, 250, 92, 216),
    const Color.fromRGBO(129, 250, 112, 1),
    const Color.fromARGB(255, 129, 202, 205),
    const Color.fromARGB(255, 194, 91, 253),
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
              margin: const EdgeInsets.all(10),
              child: PieChart(
                dataMap: dataMap,
                animationDuration: const Duration(milliseconds: 800),
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 3.2,
                colorList: colorList,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
