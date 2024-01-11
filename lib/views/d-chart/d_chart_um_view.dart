import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';

class DChartUmView extends StatefulWidget {
  const DChartUmView({super.key});

  @override
  State<DChartUmView> createState() => _DChartUmViewState();
}

class _DChartUmViewState extends State<DChartUmView> {
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
              child: DChartBar(
                data: const [
                  {
                    'id': 'Bar',
                    'data': [
                      {'domain': '2020', 'measure': 3},
                      {'domain': '2021', 'measure': 4},
                      {'domain': '2022', 'measure': 6},
                      {'domain': '2023', 'measure': 0.3},
                    ],
                  },
                ],
                domainLabelPaddingToAxisLine: 16,
                axisLineTick: 2,
                axisLinePointTick: 2,
                axisLinePointWidth: 10,
                axisLineColor: Colors.black,
                measureLabelPaddingToAxisLine: 16,
                barColor: (barData, index, id) {
                  switch (barData['domain']) {
                    case '2020':
                      return Colors.red;
                    case '2021':
                      return Colors.green;
                    case '2022':
                      return Colors.lightBlue;
                    default:
                      return Colors.yellow;
                  }
                },
                showBarValue: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
