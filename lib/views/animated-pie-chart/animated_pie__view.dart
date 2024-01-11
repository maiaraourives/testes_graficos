import 'package:animated_pie_chart/animated_pie_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';

class AnimatedPieChartView extends StatefulWidget {
  const AnimatedPieChartView({super.key});

  @override
  State<AnimatedPieChartView> createState() => _AnimatedPieChartViewState();
}

class _AnimatedPieChartViewState extends State<AnimatedPieChartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'Animated Pie Chart',
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(
            child: Container(
              margin: const EdgeInsets.all(15),
              child: AnimatedPieChart(
                sort: true,
                stokeWidth: 8.0,
                padding: 3.0,
                animatedSpeed: 500,
                pieRadius: 70.0,
                colorsList: const [
                  Colors.brown,
                  Colors.purple,
                  Colors.red,
                  Colors.yellow,
                  Colors.green,
                ],
                pieData: [
                  for (int i = 0; i < pieChartList.length; i++)
                    MdPieChart(
                      value: pieChartList[i].value,
                      name: pieChartList[i].name,
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<MdPieChart> pieChartList = [
    MdPieChart(value: 20, name: 'Peixe'),
    MdPieChart(value: 30, name: 'Melancia'),
    MdPieChart(value: 15, name: 'Banana'),
    MdPieChart(value: 20, name: 'Maça'),
    MdPieChart(value: 15, name: 'Manga'),
  ];
}
