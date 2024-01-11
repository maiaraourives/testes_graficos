import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';

class FlChartQuatroView extends StatefulWidget {
  const FlChartQuatroView({super.key});

  @override
  State<FlChartQuatroView> createState() => _FlChartQuatroViewState();
}

class _FlChartQuatroViewState extends State<FlChartQuatroView> {
  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white54,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = 'Jan';
        break;
      case 2:
        text = 'Fev';
        break;
      case 3:
        text = 'Mar';
        break;
      case 4:
        text = 'Abr';
        break;
      case 5:
        text = 'Jun';
        break;
      case 6:
        text = 'Jul';
        break;
      case 7:
        text = 'Ago';
        break;
      case 8:
        text = 'Set';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'fl_chart_quatro',
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.all(15).copyWith(top: 70),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: BarChart(
                  swapAnimationDuration: const Duration(minutes: 2),
                  swapAnimationCurve: Curves.decelerate,
                  BarChartData(
                    gridData: FlGridData(
                      show: false,
                    ),
                    barTouchData: BarTouchData(
                      enabled: true,
                      touchTooltipData: BarTouchTooltipData(
                        tooltipBgColor: Colors.white54,
                        tooltipPadding: const EdgeInsets.all(5),
                        tooltipMargin: 8,
                        tooltipRoundedRadius: 10,
                        fitInsideHorizontally: true,
                        getTooltipItem: (group, groupIndex, rod, rodIndex) {
                          DateTime date;
                          switch (group.x) {
                            case 1:
                              date = DateTime(2022, 1);
                              break;
                            case 2:
                              date = DateTime(2022, 2);
                              date = DateTime(2022, 2, 4);
                              break;
                            case 3:
                              date = DateTime(2022, 3);
                              break;
                            case 4:
                              date = DateTime(2022, 4);
                              break;
                            case 5:
                              date = DateTime(2022, 5);
                              break;
                            case 6:
                              date = DateTime(2022, 6);
                              break;
                            case 7:
                              date = DateTime(2022, 7);
                              break;
                            case 8:
                              date = DateTime(2022, 8);
                              break;
                            default:
                              throw Error();
                          }
                          return BarTooltipItem(
                            '${date.day}.${date.month}.${date.year}\n',
                            const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: (rod.toY - 1).toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 30,
                          getTitlesWidget: getTitles,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false, interval: 1),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    barGroups: [
                      BarChartGroupData(
                        x: 1,
                        barRods: [
                          BarChartRodData(
                            toY: 13,
                            gradient: const LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.cyan,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          )
                        ],
                        // showingTooltipIndicators: [0],
                      ),
                      BarChartGroupData(
                        x: 2,
                        barsSpace: 10,
                        // showingTooltipIndicators: [0],
                        barRods: [
                          BarChartRodData(toY: 10, width: 15, color: Colors.amber),
                          BarChartRodData(
                            toY: 15,
                            width: 15,
                            gradient: const LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.amber,
                                Colors.red,
                              ],
                            ),
                          ),
                        ],
                      ),
                      BarChartGroupData(
                        x: 3,
                        barRods: [
                          BarChartRodData(
                            toY: 9,
                            width: 15,
                            gradient: const SweepGradient(
                              center: FractionalOffset.topLeft,
                              transform: GradientRotation(45.13 / 4),
                              colors: <Color>[
                                Color(0xFF4285F4), // blue
                                Color(0xFF34A853), // green
                                Color(0xFFFBBC05), // yellow
                                Color(0xFFEA4335), // red
                              ],
                              stops: <double>[0.0, 0.25, 0.5, 0.75],
                            ),
                          ),
                        ],
                      ),
                      BarChartGroupData(
                        x: 4,
                        barRods: [
                          BarChartRodData(
                            toY: 4,
                            width: 15,
                            gradient: const LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.pink,
                                Colors.purple,
                              ],
                            ),
                          ),
                        ],
                      ),
                      BarChartGroupData(
                        x: 5,
                        barRods: [
                          BarChartRodData(
                            toY: 2,
                            width: 15,
                            gradient: const SweepGradient(
                              center: FractionalOffset.topRight,
                              transform: GradientRotation(45.13 / 4),
                              colors: <Color>[
                                Color(0xFF42D0F4), // blue
                                Color(0xFFD8F146), // green
                                Color(0xFFC242F4), // yellow
                                Color(0xFFA8345B), // red
                              ],
                              stops: <double>[0.0, 0.25, 0.5, 0.75],
                            ),
                          ),
                        ],
                      ),
                      BarChartGroupData(
                        x: 6,
                        barRods: [
                          BarChartRodData(toY: 13, width: 15, color: Colors.yellow),
                        ],
                      ),
                      BarChartGroupData(
                        x: 7,
                        barRods: [
                          BarChartRodData(toY: 17, width: 15, color: Colors.red),
                        ],
                      ),
                    ],
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
