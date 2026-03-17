import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expensess.dart';
import 'package:responsive_dash_board/widget/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensess(),
          SizedBox(
            height: 25,
          ),
          QuickInvoice(),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
