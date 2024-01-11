import 'package:flutter/material.dart';

import '../../configs/routes/local_routes.dart';
import '../widgets/cs_app_bar.dart';
import '../widgets/cs_button_home.dart';

class FlChartView extends StatelessWidget {
  const FlChartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'fl_chart',
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          CsButtonHome(
            icon: Icons.bar_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.FL_CHART_UM),
            title: 'fl_chart_um',
          ),
          CsButtonHome(
            icon: Icons.bar_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.FL_CHART_DOIS),
            title: 'fl_chart_dois',
          ),
          CsButtonHome(
            icon: Icons.bar_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.FL_CHART_TRES),
            title: 'fl_chart_tres',
          ),
          CsButtonHome(
            icon: Icons.bar_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.FL_CHART_QUATRO),
            title: 'fl_chart_quatro',
          ),
          CsButtonHome(
            icon: Icons.ssid_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.FL_CHART_CINCO),
            title: 'fl_chart_cinco',
          ),
          CsButtonHome(
            icon: Icons.ssid_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.FL_CHART_SEIS),
            title: 'fl_chart_seis',
          ),
          CsButtonHome(
            icon: Icons.pie_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.FL_CHART_SETE),
            title: 'fl_chart_sete',
          ),CsButtonHome(
            icon: Icons.pie_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.FL_CHART_OITO),
            title: 'fl_chart_oito',
          ),
        ],
      ),
    );
  }
}
