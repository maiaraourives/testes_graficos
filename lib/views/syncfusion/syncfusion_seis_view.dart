// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// import '../widgets/cs_app_bar.dart';

// class SyncfusionSeisView extends StatefulWidget {
//   const SyncfusionSeisView({super.key});

//   @override
//   State<SyncfusionSeisView> createState() => _SyncfusionSeisViewState();
// }

// class _SyncfusionSeisViewState extends State<SyncfusionSeisView> {
//   final List<ChartData> chartData = <ChartData>[
//     ChartData(2010, 10.53, 3.3),
//     ChartData(2011, 9.5, 5.4),
//     ChartData(2012, 10, 2.65),
//     ChartData(2013, 9.4, 2.62),
//     ChartData(2014, 5.8, 1.99),
//     ChartData(2015, 4.9, 1.44),
//     ChartData(2016, 4.5, 2),
//     ChartData(2017, 3.6, 1.56),
//     ChartData(2018, 3.43, 2.1),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CsAppBar(
//         title: 'syncfusion_',
//       ),
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           children: [
//             SfCartesianChart(series: <ChartSeries>[
//               SplineAreaSeries<ChartData, int>(
//                 dataSource: chartData,
//                 xValueMapper: (ChartData data, _) => data.x,
//                 yValueMapper: (ChartData data, _) => data.y,
//               ),
//               SplineAreaSeries<ChartData, int>(
//                 dataSource: chartData,
//                 xValueMapper: (ChartData data, _) => data.x,
//                 yValueMapper: (ChartData data, _) => data.y1,
//               ),
//             ])
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ChartData {
//   ChartData(this.x, this.y, this.y1);
//   final int x;
//   final double y;
//   final double y1;
// }
