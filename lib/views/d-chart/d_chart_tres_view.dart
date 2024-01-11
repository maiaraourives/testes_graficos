import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';

class DChartTresView extends StatefulWidget {
  const DChartTresView({super.key});

  @override
  State<DChartTresView> createState() => _DChartTresViewState();
}

class _DChartTresViewState extends State<DChartTresView> {
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
              padding: const EdgeInsets.all(70),
              child: DChartPie(
                data: const [
                  {'domain': 'Itália', 'measure': 28},
                  {'domain': 'Brasil', 'measure': 27},
                  {'domain': 'Argentina', 'measure': 20},
                  {'domain': 'Alemanha', 'measure': 15},
                ],
                fillColor: (pieData, index) {
                  switch (pieData['domain']) {
                    case 'Itália':
                      return Colors.red;
                    case 'Brasil':
                      return Colors.green;
                    case 'Argentina':
                      return Colors.lightBlue;
                    default:
                      return Colors.yellow;
                  }
                },
                animationDuration: const Duration(milliseconds: 1000),
                pieLabel: (pieData, index) {
                  return '${pieData['domain']}:\n${pieData['measure']}%';
                },
                labelColor: Colors.white,
                labelLinelength: 18,
                labelLineThickness: 1,
                labelPadding: 10,
                labelPosition: PieLabelPosition.inside,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
