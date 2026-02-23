import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expensess.dart';
import 'package:responsive_dash_board/widget/custom_drawer.dart';
import 'package:responsive_dash_board/widget/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              AllExpensess(),
              SizedBox(
                height: 25,
              ),
              QuickInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
