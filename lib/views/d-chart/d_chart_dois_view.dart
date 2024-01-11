import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';

class DChartDoisView extends StatefulWidget {
  const DChartDoisView({super.key});

  @override
  State<DChartDoisView> createState() => _DChartDoisViewState();
}

class _DChartDoisViewState extends State<DChartDoisView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'd_chart',
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(
            child: Container(
              margin: const EdgeInsets.all(15),
              child: DChartLine(
                animationDuration: const Duration(seconds: 2),
                data: const [
                  {
                    'id': 'Line',
                    'data': [
                      {'domain': 0, 'measure': 4.1},
                      {'domain': 2, 'measure': 4},
                      {'domain': 3, 'measure': 6},
                      {'domain': 4, 'measure': 1},
                    ],
                  },
                  {
                    'id': 'Line 2',
                    'data': [
                      {'domain': 0, 'measure': 1},
                      {'domain': 2, 'measure': 10},
                      {'domain': 3, 'measure': 9},
                      {'domain': 4, 'measure': 6},
                    ],
                  },
                  {
                    'id': 'Line 3',
                    'data': [
                      {'domain': 0, 'measure': 6},
                      {'domain': 2, 'measure': 1},
                      {'domain': 3, 'measure': 0},
                      {'domain': 4, 'measure': 4},
                    ],
                  },
                ],
                lineColor: (lineData, index, id) {
                  return id == 'Line'
                      ? Colors.blue
                      : id == 'Line 2'
                          ? Colors.amber
                          : Colors.green;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
