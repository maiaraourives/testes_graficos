import 'package:flutter/material.dart';
import 'package:spider_chart/spider_chart.dart';

import '../widgets/cs_app_bar.dart';

class SpiderChartView extends StatefulWidget {
  const SpiderChartView({super.key});

  @override
  State<SpiderChartView> createState() => _SpiderChartViewState();
}

class _SpiderChartViewState extends State<SpiderChartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'Spider Chart',
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Flexible(
              child: SpiderChart(
                fallbackHeight: 350,
                data: const [7, 5, 10, 7, 4],
                maxValue: 10,
                colors: const <Color>[Colors.red, Colors.pink, Colors.blue, Colors.purple, Colors.black],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
