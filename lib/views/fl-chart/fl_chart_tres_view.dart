import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


import '../widgets/cs_app_bar.dart';

class FlChartTresView extends StatefulWidget {
  const FlChartTresView({super.key});

  final Color dark = const Color.fromARGB(255, 0, 79, 82);
  final Color normal = const Color.fromARGB(255, 0, 144, 163);
  final Color light = Colors.cyan;

  @override
  State<FlChartTresView> createState() => _FlChartTresViewState();
}

class _FlChartTresViewState extends State<FlChartTresView> {
  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Seg';
        break;
      case 1:
        text = 'Ter';
        break;
      case 2:
        text = 'Qua';
        break;
      case 3:
        text = 'Qui';
        break;
      case 4:
        text = 'Sex';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    if (value == meta.max) {
      return Container();
    }
    const style = TextStyle(
      fontSize: 10,
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        meta.formattedValue,
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'fl_chart_tres',
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  const barsSpace = 15.0;
                  const barsWidth = 20.0;
                  return BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.center,
                      barTouchData: BarTouchData(
                        enabled: false,
                      ),
                      borderData: FlBorderData(
                        border: const Border(
                          top: BorderSide.none,
                          right: BorderSide.none,
                          left: BorderSide(width: 0.5),
                          bottom: BorderSide(width: 0.5),
                        ),
                      ),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 28,
                            getTitlesWidget: bottomTitles,
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            getTitlesWidget: leftTitles,
                          ),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                      gridData: FlGridData(
                        show: true,
                        checkToShowHorizontalLine: (value) => value % 10 == 0,
                        getDrawingHorizontalLine: (value) => FlLine(
                          color: Colors.grey,
                          strokeWidth: 1,
                        ),
                        drawVerticalLine: false,
                      ),
                      groupsSpace: barsSpace,
                      barGroups: getData(barsWidth, barsSpace),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> getData(double barsWidth, double barsSpace) {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 17,
            rodStackItems: [
              BarChartRodStackItem(0, 2, widget.dark),
              BarChartRodStackItem(2, 12, widget.normal),
              BarChartRodStackItem(12, 17, widget.light),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            width: barsWidth,
          ),
          BarChartRodData(
            toY: 29,
            rodStackItems: [
              BarChartRodStackItem(0, 9, widget.dark),
              BarChartRodStackItem(9, 15, widget.normal),
              BarChartRodStackItem(15, 29, widget.light),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 31,
            rodStackItems: [
              BarChartRodStackItem(0, 11, widget.dark),
              BarChartRodStackItem(11, 18, widget.normal),
              BarChartRodStackItem(18, 31, widget.light),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 34,
            rodStackItems: [
              BarChartRodStackItem(0, 6, widget.dark),
              BarChartRodStackItem(6, 23, widget.normal),
              BarChartRodStackItem(23, 34, widget.light),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            width: barsWidth,
          ),
          BarChartRodData(
            toY: 32,
            rodStackItems: [
              BarChartRodStackItem(0, 7, widget.dark),
              BarChartRodStackItem(7, 24, widget.normal),
              BarChartRodStackItem(24, 32, widget.light),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 14,
            rodStackItems: [
              BarChartRodStackItem(0, 1.5, widget.dark),
              BarChartRodStackItem(1.5, 12, widget.normal),
              BarChartRodStackItem(12, 14, widget.light),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            toY: 27,
            rodStackItems: [
              BarChartRodStackItem(0, 7, widget.dark),
              BarChartRodStackItem(7, 25, widget.normal),
              BarChartRodStackItem(25, 27, widget.light),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            width: barsWidth,
          ),
          BarChartRodData(
            toY: 29,
            rodStackItems: [
              BarChartRodStackItem(0, 6, widget.dark),
              BarChartRodStackItem(6, 23, widget.normal),
              BarChartRodStackItem(23, 29, widget.light),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            width: barsWidth,
          ),
        ],
      ),
    ];
  }
}
