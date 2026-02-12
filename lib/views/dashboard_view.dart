import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widget/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox.shrink(),
        tabletLayout: (context) => SizedBox.shrink(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
