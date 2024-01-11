// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:flutter/material.dart';

// import '../widgets/cs_app_bar.dart';

// class SyncfusionQuatroView extends StatefulWidget {
//   const SyncfusionQuatroView({super.key});

//   @override
//   State<SyncfusionQuatroView> createState() => _SyncfusionQuatroViewState();
// }

// class _SyncfusionQuatroViewState extends State<SyncfusionQuatroView> {
//   final List<ChartData> chartData = [ChartData(1, 35), ChartData(2, 23), ChartData(3, 34), ChartData(4, 25), ChartData(5, 40)];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CsAppBar(
//         title: 'syncfusion_',
//       ),
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           Flexible(
//             child: SfCartesianChart(
//               series: <ChartSeries>[
//                 BarSeries<ChartData, double>(
//                   dataSource: chartData,
//                   xValueMapper: (ChartData data, _) => data.x,
//                   yValueMapper: (ChartData data, _) => data.y,
//                   // Width of the bars
//                   width: 0.6,
//                   // Spacing between the bars
//                   spacing: 0.3,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ChartData {
//   ChartData(this.x, this.y);
//   final double x;
//   final double? y;
// }
