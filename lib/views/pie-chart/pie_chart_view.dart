import 'package:flutter/material.dart';

import '../../configs/routes/local_routes.dart';
import '../widgets/cs_app_bar.dart';
import '../widgets/cs_button_home.dart';

class PieChartView extends StatefulWidget {
  const PieChartView({super.key});

  @override
  State<PieChartView> createState() => _PieChartViewState();
}

class _PieChartViewState extends State<PieChartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'pie_chart',
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          CsButtonHome(
            icon: Icons.pie_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.PIE_CHART_UM),
            title: 'pie_chart_um',
          ),
          CsButtonHome(
            icon: Icons.pie_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.PIE_CHART_DOIS),
            title: 'pie_chart_dois',
          ),
          CsButtonHome(
            icon: Icons.pie_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.PIE_CHART_TRES),
            title: 'pie_chart_tres',
          ),
          CsButtonHome(
            icon: Icons.pie_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.PIE_CHART_QUATRO),
            title: 'pie_chart_quatro',
          ),
        ],
      ),
    );
  }
}
