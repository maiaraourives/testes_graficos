// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// import '../widgets/cs_app_bar.dart';

// class SyncfusionCincoView extends StatefulWidget {
//   const SyncfusionCincoView({super.key});

//   @override
//   State<SyncfusionCincoView> createState() => _SyncfusionCincoViewState();
// }

// class _SyncfusionCincoViewState extends State<SyncfusionCincoView> {
//   final List<ChartData> chartData = [
//     ChartData(DateTime(2010),1, 35),
//     ChartData(DateTime(2014),2, 23),
//     ChartData(DateTime(2018),3, 34),
//     ChartData(DateTime(2020),4, 25),
//     ChartData(DateTime(2022),5, 40),
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
//             Flexible(
//               child: SfCartesianChart(
//                 primaryXAxis: DateTimeAxis(),
//                 series: <ChartSeries>[
//                   RangeAreaSeries<ChartData, DateTime>(
//                     dataSource: chartData,
//                     xValueMapper: (ChartData data, _) => data.x,
//                     lowValueMapper: (ChartData data, _) => data.low,
//                     highValueMapper: (ChartData data, _) => data.high,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ChartData {
//   ChartData(this.x, this.high, this.low);
//   final DateTime x;
//   final double high;
//   final double low;
// }
