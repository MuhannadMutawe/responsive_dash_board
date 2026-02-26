import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/latest_transction.dart';
import 'package:responsive_dash_board/widget/quick_invoice_header.dart';
import 'package:responsive_dash_board/widget/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvioceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransction(),
          Divider(
            height: 48,
          ),
          TitleTextField(
            title: 'Customer name',
            hintText: 'Type customer name',
          ),
        ],
      ),
    );
  }
}
