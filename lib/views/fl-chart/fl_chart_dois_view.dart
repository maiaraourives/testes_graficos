import 'package:fl_chart/fl_chart.dart' show AxisTitles, BarChart, BarChartAlignment, BarChartData, BarChartGroupData, BarChartRodData, BarTooltipItem, BarTouchData, BarTouchTooltipData, FlBorderData, FlGridData, FlLine, FlTitlesData, SideTitles;
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';

class FlChartDoisView extends StatefulWidget {
  FlChartDoisView({super.key});

  final shadowColor = const Color(0xFFCCCCCC);
  final dataList = [
    const _BarData(Colors.yellow, 18, 18),
    const _BarData(Colors.green, 17, 8),
    const _BarData(Colors.orange, 10, 15),
    const _BarData(Colors.pink, 2.5, 5),
    const _BarData(Colors.blue, 2, 2.5),
    const _BarData(Colors.red, 2, 2),
  ];

  @override
  State<FlChartDoisView> createState() => _FlChartDoisViewState();
}

class _FlChartDoisViewState extends State<FlChartDoisView> {
  BarChartGroupData generateBarGroup(
    int x,
    Color color,
    double value,
    double shadowValue,
  ) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: value,
          color: color,
          width: 6,
        ),
        BarChartRodData(
          toY: shadowValue,
          color: widget.shadowColor,
          width: 6,
        ),
      ],
      showingTooltipIndicators: touchedGroupIndex == x ? [0] : [],
    );
  }

  int touchedGroupIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'fl_chart_dois',
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: AspectRatio(
                aspectRatio: 1.4,
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceBetween,
                    borderData: FlBorderData(
                      show: true,
                      border: const Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 30,
                          getTitlesWidget: (value, meta) {
                            return Text(
                              value.toInt().toString(),
                              textAlign: TextAlign.left,
                            );
                          },
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 36,
                        ),
                      ),
                      rightTitles: AxisTitles(),
                      topTitles: AxisTitles(),
                    ),
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: false,
                      getDrawingHorizontalLine: (value) => FlLine(
                        color: Colors.black,
                        strokeWidth: 1,
                      ),
                    ),
                    barGroups: widget.dataList.asMap().entries.map((e) {
                      final index = e.key;
                      final data = e.value;
                      return generateBarGroup(
                        index,
                        data.color,
                        data.value,
                        data.shadowValue,
                      );
                    }).toList(),
                    maxY: 20,
                    barTouchData: BarTouchData(
                      enabled: true,
                      handleBuiltInTouches: false,
                      touchTooltipData: BarTouchTooltipData(
                        tooltipBgColor: Colors.transparent,
                        tooltipMargin: 0,
                        getTooltipItem: (
                          BarChartGroupData group,
                          int groupIndex,
                          BarChartRodData rod,
                          int rodIndex,
                        ) {
                          return BarTooltipItem(
                            rod.toY.toString(),
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              color: rod.color,
                              fontSize: 18,
                              shadows: const [
                                Shadow(
                                  color: Colors.black26,
                                  blurRadius: 12,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                      touchCallback: (event, response) {
                        if (event.isInterestedForInteractions && response != null && response.spot != null) {
                          setState(() {
                            touchedGroupIndex = response.spot!.touchedBarGroupIndex;
                          });
                        } else {
                          setState(() {
                            touchedGroupIndex = -1;
                          });
                        }
                      },
                    ),
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

class _BarData {
  const _BarData(this.color, this.value, this.shadowValue);
  final Color color;
  final double value;
  final double shadowValue;
}
