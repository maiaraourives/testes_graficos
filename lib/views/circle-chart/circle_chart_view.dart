import 'package:circle_chart/circle_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';

class CircleChartView extends StatefulWidget {
  const CircleChartView({super.key});

  @override
  State<CircleChartView> createState() => _CircleChartViewState();
}

class _CircleChartViewState extends State<CircleChartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'Circle Chart',
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Flexible(
              child: CircleChart(
                progressNumber: 4,
                progressColor: Colors.black,
                maxNumber: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
