import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';

class DChartCincoView extends StatefulWidget {
  const DChartCincoView({super.key});

  @override
  State<DChartCincoView> createState() => _DChartCincoViewState();
}

class _DChartCincoViewState extends State<DChartCincoView> {
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
              child: DChartGauge(
                data: const [
                  {'domain': 'Bom', 'measure': 30},
                  {'domain': 'Médio', 'measure': 30},
                  {'domain': 'Ruim', 'measure': 30},
                ],
                fillColor: (pieData, index) {
                  switch (pieData['domain']) {
                    case 'Bom':
                      return Colors.green;
                    case 'Médio':
                      return Colors.orange;
                    default:
                      return Colors.red;
                  }
                },
                showLabelLine: false,
                pieLabel: (pieData, index) {
                  return '${pieData['domain']}';
                },
                labelPosition: PieLabelPosition.inside,
                labelPadding: 0,
                labelColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
