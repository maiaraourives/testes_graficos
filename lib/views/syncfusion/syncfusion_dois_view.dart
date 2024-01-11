// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// import '../widgets/cs_app_bar.dart';

// class SyncfusionDoisView extends StatefulWidget {
//   const SyncfusionDoisView({super.key});

//   @override
//   State<SyncfusionDoisView> createState() => _SyncfusionDoisViewState();
// }

// class _SyncfusionDoisViewState extends State<SyncfusionDoisView> {
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
//               child: SfCartesianChart(
//             primaryXAxis: DateTimeAxis(),
//             series: <ChartSeries>[
//               // Renders fast line chart
//               FastLineSeries<ChartData, DateTime>(
//                 dataSource: [
//                   ChartData(DateTime(2010), 35),
//                   ChartData(DateTime(2012), 28),
//                   ChartData(DateTime(2014), 34),
//                   ChartData(DateTime(2018), 32),
//                   ChartData(DateTime(2023), 40),
//                 ],
//                 xValueMapper: (ChartData data, _) => data.x,
//                 yValueMapper: (ChartData data, _) => data.y,
//               ),
//             ],
//           )),
//         ],
//       ),
//     );
//   }
// }

// class ChartData {
//   ChartData(this.x, this.y);
//   final DateTime x;
//   final double? y;
// }
