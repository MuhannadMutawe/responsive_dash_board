import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expensess_and_quick_invoice_secion.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/custom_drawer.dart';
import 'package:responsive_dash_board/widget/income_section.dart';
import 'package:responsive_dash_board/widget/my_card_section.dart';
import 'package:responsive_dash_board/widget/trasnction_history_section.dart';

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
          flex: 2,
          child: AllExpensessAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: CustomBackgroundContainer(
              child: Column(
                children: [
                  MyCardSection(),
                  Divider(
                    height: 24,
                    color: Color(0XFFF1F1F1),
                  ),
                  TrasnctionHistorySection(),
                  SizedBox(
                    height: 16,
                  ),
                  IncomeSection(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
