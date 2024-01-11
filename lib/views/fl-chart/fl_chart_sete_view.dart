import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';
import '../widgets/cs_info_grafico.dart';

class FlChartSeteView extends StatefulWidget {
  const FlChartSeteView({super.key});

  @override
  State<StatefulWidget> createState() => FlChartSeteViewState();
}

class FlChartSeteViewState extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'fl_chart_sete',
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1.3,
                    child: PieChart(
                      PieChartData(
                        pieTouchData: PieTouchData(
                          touchCallback: (FlTouchEvent event, pieTouchResponse) {
                            setState(
                              () {
                                if (!event.isInterestedForInteractions || pieTouchResponse == null || pieTouchResponse.touchedSection == null) {
                                  touchedIndex = -1;
                                  return;
                                }
                                touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
                              },
                            );
                          },
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 0,
                        centerSpaceRadius: 40,
                        sections: List.generate(
                          4,
                          (i) {
                            final isTouched = i == touchedIndex;
                            const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
                            switch (i) {
                              case 0:
                                return PieChartSectionData(
                                  color: Colors.pink,
                                  value: 40,
                                  title: '40%',
                                  radius: isTouched ? 60.0 : 50.0,
                                  titleStyle: TextStyle(
                                    fontSize: isTouched ? 25.0 : 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    shadows: shadows,
                                  ),
                                );
                              case 1:
                                return PieChartSectionData(
                                  color: Colors.amber,
                                  value: 30,
                                  title: '30%',
                                  radius: isTouched ? 60.0 : 50.0,
                                  titleStyle: TextStyle(
                                    fontSize: isTouched ? 25.0 : 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    shadows: shadows,
                                  ),
                                );
                              case 2:
                                return PieChartSectionData(
                                  color: Colors.green,
                                  value: 15,
                                  title: '15%',
                                  radius: isTouched ? 60.0 : 50.0,
                                  titleStyle: TextStyle(
                                    fontSize: isTouched ? 25.0 : 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    shadows: shadows,
                                  ),
                                );
                              case 3:
                                return PieChartSectionData(
                                  color: Colors.indigo,
                                  value: 15,
                                  title: '15%',
                                  radius: isTouched ? 60.0 : 50.0,
                                  titleStyle: TextStyle(
                                    fontSize: isTouched ? 25.0 : 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    shadows: shadows,
                                  ),
                                );
                              default:
                                throw Error();
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CsInfoGrafico(
                      width: touchedIndex == 0 ? 18 : 16,
                      height: touchedIndex == 0 ? 18 : 16,
                      colorContainer: touchedIndex == 0 ? Colors.pink : Colors.pink.withOpacity(0.3),
                      title: 'Doce',
                      fontSize: touchedIndex == 0 ? 14 : 12,
                      color: touchedIndex == 0 ? Colors.white : Colors.grey,
                    ),
                    const SizedBox(height: 10),
                    CsInfoGrafico(
                      width: touchedIndex == 1 ? 18 : 16,
                      height: touchedIndex == 1 ? 18 : 16,
                      colorContainer: touchedIndex == 1 ? Colors.amber : Colors.amber.withOpacity(0.3),
                      title: 'Salgado',
                      fontSize: touchedIndex == 1 ? 14 : 12,
                      color: touchedIndex == 1 ? Colors.white : Colors.grey,
                    ),
                    const SizedBox(height: 10),
                    CsInfoGrafico(
                      width: touchedIndex == 2 ? 18 : 16,
                      height: touchedIndex == 2 ? 18 : 16,
                      colorContainer: touchedIndex == 1 ? Colors.green : Colors.green.withOpacity(0.3),
                      title: 'Azedo',
                      fontSize: touchedIndex == 2 ? 14 : 12,
                      color: touchedIndex == 2 ? Colors.white : Colors.grey,
                    ),
                    const SizedBox(height: 10),
                    CsInfoGrafico(
                      width: touchedIndex == 3 ? 18 : 16,
                      height: touchedIndex == 3 ? 18 : 16,
                      colorContainer: touchedIndex == 3 ? Colors.indigo : Colors.indigo.withOpacity(0.3),
                      title: 'Suave',
                      fontSize: touchedIndex == 3 ? 14 : 12,
                      color: touchedIndex == 3 ? Colors.white : Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
