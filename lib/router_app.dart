import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'configs/routes/local_routes.dart';
import 'views/animated-pie-chart/animated_pie__view.dart';
import 'views/circle-chart/circle_chart_view.dart';
import 'views/d-chart/d_chart_cinco_view.dart';
import 'views/d-chart/d_chart_dois_view.dart';
import 'views/d-chart/d_chart_quatro_view.dart';
import 'views/d-chart/d_chart_tres_view.dart';
import 'views/d-chart/d_chart_um_view.dart';
import 'views/d-chart/d_chart_view.dart';
import 'views/fl-chart/fl_chart_cinco_view.dart';
import 'views/fl-chart/fl_chart_dois_view.dart';
import 'views/fl-chart/fl_chart_oito_view.dart';
import 'views/fl-chart/fl_chart_quatro_view.dart';
import 'views/fl-chart/fl_chart_seis_view.dart';
import 'views/fl-chart/fl_chart_sete_view.dart';
import 'views/fl-chart/fl_chart_tres_view.dart';
import 'views/fl-chart/fl_chart_um_view.dart';
import 'views/fl-chart/fl_chart_view.dart';
import 'views/home/home_view.dart';
import 'views/pie-chart/pie_chart_dois_view.dart';
import 'views/pie-chart/pie_chart_quatro_view.dart';
import 'views/pie-chart/pie_chart_tres_view.dart';
import 'views/pie-chart/pie_chart_um_view.dart';
import 'views/pie-chart/pie_chart_view.dart';
import 'views/radar-chart/radar_chart_view.dart';
import 'views/spider_chart/spider_chart_view.dart';
import 'views/widgets/cs_app_bar.dart';
import 'views/widgets/cs_elevated_button.dart';
import 'views/widgets/cs_error.dart';

class RouterApp {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LocalRoutes.HOME:
        return _PageBuilder(
          child: const HomeView(),
          settings: settings,
        );

      case LocalRoutes.FL_CHART:
        return _PageBuilder(
          child: const FlChartView(),
          settings: settings,
        );

      case LocalRoutes.FL_CHART_UM:
        return _PageBuilder(
          child: const FlChartUmView(),
          settings: settings,
        );

      case LocalRoutes.FL_CHART_DOIS:
        return _PageBuilder(
          child: FlChartDoisView(),
          settings: settings,
        );

      case LocalRoutes.FL_CHART_TRES:
        return _PageBuilder(
          child: const FlChartTresView(),
          settings: settings,
        );

      case LocalRoutes.FL_CHART_QUATRO:
        return _PageBuilder(
          child: const FlChartQuatroView(),
          settings: settings,
        );

      case LocalRoutes.FL_CHART_CINCO:
        return _PageBuilder(
          child: const FlChartCincoView(),
          settings: settings,
        );

      case LocalRoutes.FL_CHART_SEIS:
        return _PageBuilder(
          child: const FlChartSeisView(),
          settings: settings,
        );

      case LocalRoutes.FL_CHART_SETE:
        return _PageBuilder(
          child: const FlChartSeteView(),
          settings: settings,
        );

      case LocalRoutes.FL_CHART_OITO:
        return _PageBuilder(
          child: const FlChartOitoView(),
          settings: settings,
        );

      case LocalRoutes.D_CHART:
        return _PageBuilder(
          child: const DChartView(),
          settings: settings,
        );

      case LocalRoutes.D_CHART_UM:
        return _PageBuilder(
          child: const DChartUmView(),
          settings: settings,
        );

      case LocalRoutes.D_CHART_DOIS:
        return _PageBuilder(
          child: const DChartDoisView(),
          settings: settings,
        );

      case LocalRoutes.D_CHART_TRES:
        return _PageBuilder(
          child: const DChartTresView(),
          settings: settings,
        );

      case LocalRoutes.D_CHART_QUATRO:
        return _PageBuilder(
          child: const DChartQuatroView(),
          settings: settings,
        );

      case LocalRoutes.D_CHART_CINCO:
        return _PageBuilder(
          child: const DChartCincoView(),
          settings: settings,
        );

      // case LocalRoutes.SYNCFUSION:
      //   return _PageBuilder(
      //     child: const SyncfusionView(),
      //     settings: settings,
      //   );

      // case LocalRoutes.SYNCFUSION_UM:
      //   return _PageBuilder(
      //     child: const SyncfusionUmView(),
      //     settings: settings,
      //   );

      // case LocalRoutes.SYNCFUSION_DOIS:
      //   return _PageBuilder(
      //     child: const SyncfusionDoisView(),
      //     settings: settings,
      //   );

      // case LocalRoutes.SYNCFUSION_TRES:
      //   return _PageBuilder(
      //     child: const SyncfusionTresView(),
      //     settings: settings,
      //   );

      // case LocalRoutes.SYNCFUSION_QUATRO:
      //   return _PageBuilder(
      //     child: const SyncfusionQuatroView(),
      //     settings: settings,
      //   );

      // case LocalRoutes.SYNCFUSION_CINCO:
      //   return _PageBuilder(
      //     child: const SyncfusionCincoView(),
      //     settings: settings,
      //   );

      // case LocalRoutes.SYNCFUSION_SEIS:
      //   return _PageBuilder(
      //     child: const SyncfusionSeisView(),
      //     settings: settings,
      //   );

      // case LocalRoutes.SYNCFUSION_SETE:
      //   return _PageBuilder(
      //     child: const SyncfusionSeteView(),
      //     settings: settings,
      //   );

      case LocalRoutes.PIE_CHART:
        return _PageBuilder(
          child: const PieChartView(),
          settings: settings,
        );

      case LocalRoutes.PIE_CHART_UM:
        return _PageBuilder(
          child: const PieChartUmView(),
          settings: settings,
        );

      case LocalRoutes.PIE_CHART_DOIS:
        return _PageBuilder(
          child: const PieChartDoisView(),
          settings: settings,
        );

      case LocalRoutes.PIE_CHART_TRES:
        return _PageBuilder(
          child: const PieChartTresView(),
          settings: settings,
        );

      case LocalRoutes.PIE_CHART_QUATRO:
        return _PageBuilder(
          child: const PieChartQuatroView(),
          settings: settings,
        );

      case LocalRoutes.RADAR_CHART:
        return _PageBuilder(
          child: const RadarChartView(),
          settings: settings,
        );

      case LocalRoutes.SPIDER_CHART:
        return _PageBuilder(
          child: const SpiderChartView(),
          settings: settings,
        );

      // case LocalRoutes.SPEEDOMETER_CHART:
      //   return _PageBuilder(
      //     child: const SpeedometerChartView(),
      //     settings: settings,
      //   );

      case LocalRoutes.CIRCLE_CHART:
        return _PageBuilder(
          child: const CircleChartView(),
          settings: settings,
        );

      case LocalRoutes.ANIMATED_PIE_CHART:
        return _PageBuilder(
          child: const AnimatedPieChartView(),
          settings: settings,
        );

      default:
        return _PageBuilder(
          child: const _RotaInexistenteView(),
          settings: settings,
        );
    }
  }
}

class _PageBuilder extends PageRouteBuilder {
  ///Responsável pelo efeito de 'fade transition' entre as transições de telas
  _PageBuilder({
    required this.child,
    required this.settings,
  }) : super(
          settings: settings,
          transitionDuration: const Duration(milliseconds: 500),
          reverseTransitionDuration: const Duration(milliseconds: 100),
          transitionsBuilder: (context, animation, secAnimation, child) {
            MediaQueryData data = MediaQuery.of(context);

            return GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Observer(
                builder: (_) {
                  return MediaQuery(
                    data: data.copyWith(
                      alwaysUse24HourFormat: true,
                    ),
                    child: child,
                  );
                },
              ),
            );
          },
          pageBuilder: (context, animation, secAnimation) => child,
        );

  final Widget child;

  @override
  final RouteSettings settings;
}

class _RotaInexistenteView extends StatelessWidget {
  const _RotaInexistenteView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CsAppBar(title: 'Ops! Ocorreu um erro'),
      body: Center(
        child: SingleChildScrollView(
          child: CsError(
            text: 'Desculpe, a página que você está procurando não foi encontrada. Relate o seu problema abrindo um chamado no botão abaixo!',
            actions: [
              CsElevatedButton(
                height: 35,
                width: MediaQuery.of(context).size.width * 0.8,
                label: 'Abrir chamado',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
