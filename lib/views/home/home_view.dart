import 'package:flutter/material.dart';

import '../../configs/routes/local_routes.dart';
import '../widgets/cs_app_bar.dart';
import '../widgets/cs_button_home.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'Testes',
      ),
      body: ListView(
        children: [
          CsButtonHome(
            icon: Icons.bar_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.FL_CHART),
            title: 'fl_chart',
          ),
          CsButtonHome(
            icon: Icons.bar_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.D_CHART),
            title: 'd_chart',
          ),
          // CsButtonHome(
          //   icon: Icons.bar_chart_sharp,
          //   onTap: () => Navigator.pushNamed(context, LocalRoutes.SYNCFUSION),
          //   title: 'syncfusion',
          // ),
          CsButtonHome(
            icon: Icons.pie_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.PIE_CHART),
            title: 'pie_chart',
          ),
          CsButtonHome(
            icon: Icons.radar,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.RADAR_CHART),
            title: 'radar_chart',
          ),
          CsButtonHome(
            icon: Icons.radar,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.SPIDER_CHART),
            title: 'spider_chart',
          ),
          CsButtonHome(
            icon: Icons.pie_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.CIRCLE_CHART),
            title: 'circle_chart',
          ),
          // CsButtonHome(
          //   icon: Icons.pie_chart_sharp,
          //   onTap: () => Navigator.pushNamed(context, LocalRoutes.SPEEDOMETER_CHART),
          //   title: 'speedometer_chart',
          // ),
          CsButtonHome(
            icon: Icons.pie_chart_sharp,
            onTap: () => Navigator.pushNamed(context, LocalRoutes.ANIMATED_PIE_CHART),
            title: 'animated_pie_chart',
          ),
          SizedBox(height: 10),

          // Container(
          //   margin: EdgeInsets.all(20),
          //   child: CustomButton(
          //     onPressed: () {},
          //     backgroundColor: Colors.amber,
          //     child: Text(
          //       'Entrar',
          //       textAlign: TextAlign.center,
          //       overflow: TextOverflow.ellipsis,
          //       style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          //     ),
          //   ),
          // ),

          
        ],
      ),
    );
  }
}
