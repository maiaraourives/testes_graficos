// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:flutter/material.dart';

// import '../widgets/cs_app_bar.dart';

// class SyncfusionTresView extends StatefulWidget {
//   const SyncfusionTresView({super.key});

//   @override
//   State<SyncfusionTresView> createState() => _SyncfusionTresViewState();
// }

// class _SyncfusionTresViewState extends State<SyncfusionTresView> {
//   final List<ChartData> chartData = [
//     ChartData(1924, 400),
//     ChartData(1925, 410),
//     ChartData(1926, 405),
//     ChartData(1927, 410),
//     ChartData(1928, 350),
//     ChartData(1929, 370),
//     ChartData(1930, 500),
//     ChartData(1931, 390),
//     ChartData(1932, 450),
//     ChartData(1933, 440),
//     ChartData(1934, 350),
//     ChartData(1935, 370),
//     ChartData(1936, 480),
//   ];

//   final LinearGradient gradientColors = LinearGradient(
//     colors: <Color>[Colors.blue, Colors.blue[200]!, Colors.blue[50]!],
//     stops: const <double>[0.0, 0.5, 1.0],
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CsAppBar(
//         title: 'syncfusion_',
//       ),
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: SfCartesianChart(
//           primaryYAxis: NumericAxis(labelFormat: '{value}mm'),
//           series: <ChartSeries>[
//         // Renders area chart
//         AreaSeries<ChartData, int>(
//           dataSource: chartData,
//           xValueMapper: (ChartData data, _) => data.x,
//           yValueMapper: (ChartData data, _) => data.y,
//           gradient: gradientColors,
//         ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ChartData {
//   ChartData(this.x, this.y);
//   final int x;
//   final double? y;
// }
