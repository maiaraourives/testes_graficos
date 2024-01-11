import 'package:flutter/material.dart';

import '../../configs/routes/local_routes.dart';
import '../widgets/cs_app_bar.dart';
import '../widgets/cs_button_home.dart';

class DChartView extends StatelessWidget {
  const DChartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'd_chart',
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CsButtonHome(
            icon: Icons.bar_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.D_CHART_UM),
            title: 'd_chart_um',
          ),
          CsButtonHome(
            icon: Icons.ssid_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.D_CHART_DOIS),
            title: 'd_chart_dois',
          ),
          CsButtonHome(
            icon: Icons.pie_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.D_CHART_TRES),
            title: 'd_chart_tres',
          ),
          CsButtonHome(
            icon: Icons.pie_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.D_CHART_QUATRO),
            title: 'd_chart_quatro',
          ),
          CsButtonHome(
            icon: Icons.pie_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.D_CHART_CINCO),
            title: 'd_chart_cinco',
          ),
        ],
      ),
    );
  }
}
