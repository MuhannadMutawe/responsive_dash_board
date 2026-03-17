import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widget/custom_drawer.dart';
import 'package:responsive_dash_board/widget/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widget/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widget/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0XFFF7F9FA),
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),

                icon: const Icon(Icons.menu),
              ),
              backgroundColor: Color(0XFFFAFAFA),
              scrolledUnderElevation: 0,
            )
          : null,
      drawer: MediaQuery.of(context).size.width < 800
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => DashBoardMobileLayout(),
        tabletLayout: (context) => DashBoardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
