import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';

class FlChartCincoView extends StatefulWidget {
  const FlChartCincoView({super.key});

  @override
  State<StatefulWidget> createState() => FlChartCincoViewState();
}

class FlChartCincoViewState extends State<FlChartCincoView> {
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
        title: 'fl_chart_cinco',
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
                                  text = '1h';
                                  break;
                                case 2:
                                  text = '2h';
                                  break;
                                case 3:
                                  text = '3h';
                                  break;
                                case 4:
                                  text = '5h';
                                  break;
                                case 5:
                                  text = '6h';
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
                        border: const Border(
                          bottom: BorderSide(color: Colors.white38, width: 1),
                          left: BorderSide(color: Colors.transparent),
                          right: BorderSide(color: Colors.transparent),
                          top: BorderSide(color: Colors.transparent),
                        ),
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          // shadow: Shadow(color: Colors.white,blurRadius: 1),
                          isCurved: true,
                          color: Colors.yellow,
                          barWidth: 2,
                          isStrokeCapRound: true,
                          dotData: FlDotData(show: false),
                          belowBarData: BarAreaData(show: false),
                          spots: const [
                            FlSpot(1, 1),
                            FlSpot(3, 1.5),
                            FlSpot(5, 1.4),
                            FlSpot(7, 3.4),
                            FlSpot(10, 2),
                            FlSpot(12, 2.2),
                            FlSpot(13, 1.8),
                          ],
                        ),
                        LineChartBarData(
                          isCurved: true,
                          color: Colors.purple,
                          barWidth: 8,
                          isStrokeCapRound: true,
                          dotData: FlDotData(show: false),
                          spots: const [
                            FlSpot(1, 1),
                            FlSpot(3, 2.8),
                            FlSpot(7, 1.2),
                            FlSpot(10, 2.8),
                            FlSpot(12, 2.6),
                            FlSpot(13, 3.9),
                          ],
                        ),
                      ],
                      minX: 0,
                      minY: 0,
                    ),
                    swapAnimationDuration: const Duration(milliseconds: 250),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
