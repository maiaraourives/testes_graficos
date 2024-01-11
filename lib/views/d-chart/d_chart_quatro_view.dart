import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';

class DChartQuatroView extends StatefulWidget {
  const DChartQuatroView({super.key});

  @override
  State<DChartQuatroView> createState() => _DChartQuatroViewState();
}

class _DChartQuatroViewState extends State<DChartQuatroView> {
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
              child: DChartPie(
                data: const [
                  {'domain': 'Palha', 'measure': 28},
                  {'domain': 'Lama', 'measure': 27},
                  {'domain': 'Galho', 'measure': 20},
                  {'domain': 'Folha', 'measure': 15},
                ],
                fillColor: (pieData, index) {
                  switch (pieData['domain']) {
                    case 'Palha':
                      return Colors.brown.shade200;
                    case 'Lama':
                      return Colors.brown.shade900;
                    case 'Galho':
                      return Colors.brown;
                    default:
                      return Colors.brown.shade400;
                  }
                },
                donutWidth: 30,
                
                labelColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
