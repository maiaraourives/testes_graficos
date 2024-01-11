import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';

class FlChartSeisView extends StatefulWidget {
  const FlChartSeisView({super.key});

  @override
  State<StatefulWidget> createState() => FlChartSeisViewState();
}

class FlChartSeisViewState extends State<FlChartSeisView> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'fl_chart_seis',
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15).copyWith(top: 70),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(12),
            ),
            child: AspectRatio(
              aspectRatio: 1.23,
              child: Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(right: 16, left: 6),
                    child: LineChart(
                      LineChartData(
                        lineTouchData: LineTouchData(
                          handleBuiltInTouches: true,
                          touchTooltipData: LineTouchTooltipData(
                            tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
                          ),
                        ),
                        gridData: FlGridData(show: false),
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 32,
                              interval: 1,
                              getTitlesWidget: (double value, TitleMeta meta) {
                                const style = TextStyle(
                                  color: Colors.white30,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                );
                                Widget text;
                                switch (value.toInt()) {
                                  case 2:
                                    text = const Text('MAR', style: style);
                                    break;
                                  case 7:
                                    text = const Text('ABR', style: style);
                                    break;
                                  case 12:
                                    text = const Text('MAI', style: style);
                                    break;
                                  default:
                                    text = const Text('');
                                    break;
                                }

                                return SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  space: 10,
                                  child: text,
                                );
                              },
                            ),
                          ),
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              getTitlesWidget: (double value, TitleMeta meta) {
                                const style = TextStyle(
                                  color: Colors.white30,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                );
                                String text;
                                switch (value.toInt()) {
                                  case 1:
                                    text = '1m';
                                    break;
                                  case 2:
                                    text = '2m';
                                    break;
                                  case 3:
                                    text = '3m';
                                    break;
                                  case 4:
                                    text = '5m';
                                    break;
                                  case 5:
                                    text = '6m';
                                    break;
                                  default:
                                    return Container();
                                }

                                return Text(text, style: style, textAlign: TextAlign.center);
                              },
                              showTitles: true,
                              interval: 1,
                              reservedSize: 40,
                            ),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: Border(
                            bottom: BorderSide(color: Colors.white.withOpacity(0.2), width: 1),
                            left: const BorderSide(color: Colors.transparent),
                            right: const BorderSide(color: Colors.transparent),
                            top: const BorderSide(color: Colors.transparent),
                          ),
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            isCurved: true,
                            gradient: const LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.cyan,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.center,
                            ),
                            barWidth: 3,
                            isStrokeCapRound: true,
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(
                              show: true,
                              gradient:  LinearGradient(
                              colors: [
                                Colors.blue.withOpacity(0.5),
                                Colors.cyan.withOpacity(0.5),
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            ),
                            spots: const [
                              FlSpot(1, 1),
                              FlSpot(3, 2.8),
                              FlSpot(7, 1.2),
                              FlSpot(10, 4.8),
                              FlSpot(12, 2.6),
                              FlSpot(13, 3.9),
                            ],
                          ),
                          LineChartBarData(
                            isCurved: true,
                            color: Colors.red,
                            barWidth: 2,
                            isStrokeCapRound: true,
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                            spots: const [
                              FlSpot(1, 1),
                              FlSpot(3, 1.5),
                              FlSpot(5, 1.4),
                              FlSpot(7, 0.4),
                              FlSpot(10, 2),
                              FlSpot(12, 2.2),
                              FlSpot(13, 1.8),
                            ],
                          ),
                        ],
                        minX: 0,
                        minY: 0,
                      ),
                      swapAnimationDuration: const Duration(milliseconds: 250),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
