import 'dart:math';

import 'package:flutter/material.dart';
import 'package:radar_chart/radar_chart.dart';

import '../widgets/cs_app_bar.dart';

class RadarChartView extends StatefulWidget {
  const RadarChartView({super.key});

  @override
  State<RadarChartView> createState() => _RadarChartViewState();
}

class _RadarChartViewState extends State<RadarChartView> {
  List<double> values1 = [1, 0.8, 0.65];
  List<double> values2 = [0.5, 0.3, 0.85];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'Radar Chart',
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Flexible(
              child: RadarChart(
                length: 3,
                radius: 250,
                initialAngle: pi / 1,
                backgroundColor: Colors.white,
                borderStroke: 2,
                borderColor: Colors.grey,
                radialStroke: 2,
                radialColor: Colors.grey,
                radars: [
                  RadarTile(
                    values: values1,
                    borderStroke: 2,
                    borderColor: Colors.pink.shade500,
                    backgroundColor: Colors.pink.shade300.withOpacity(0.4),
                  ),
                  RadarTile(
                    values: values2,
                    borderStroke: 2,
                    borderColor: Colors.orange.shade500,
                    backgroundColor: Colors.orange.shade300.withOpacity(0.4),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
