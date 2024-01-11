// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:flutter/material.dart';

// import '../widgets/cs_app_bar.dart';

// class SyncfusionUmView extends StatefulWidget {
//   const SyncfusionUmView({super.key});

//   @override
//   State<SyncfusionUmView> createState() => _SyncfusionUmViewState();
// }

// class _SyncfusionUmViewState extends State<SyncfusionUmView> {
//   late TooltipBehavior _tooltipBehavior;

//   @override
//   void initState() {
//     _tooltipBehavior = TooltipBehavior(enable: true);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CsAppBar(
//         title: 'syncfusion_',
//       ),
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Center(
//           child: SfCartesianChart(
//             tooltipBehavior: _tooltipBehavior,
//             primaryXAxis: CategoryAxis(),
//             series: <ChartSeries>[
//               LineSeries<ChartData, String>(
//                 enableTooltip: true,
//                 dataSource: [
//                   ChartData('Jan', 35),
//                   ChartData('Feb', 28),
//                   ChartData('Mar', 34),
//                   ChartData('Apr', 32),
//                   ChartData('May', 40),
//                 ],
//                 xValueMapper: (ChartData data, _) => data.x,
//                 yValueMapper: (ChartData data, _) => data.y,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ChartData {
//   ChartData(this.x, this.y);
//   final String x;
//   final double? y;
// }
