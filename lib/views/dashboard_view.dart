import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const Center(child: Text('Mobile Layout')),
        tabletLayout: (context) => const Center(child: Text('Tablet Layout')),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
