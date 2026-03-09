import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/transaction_history_header.dart';

class TrasnctionHistorySection extends StatelessWidget {
  const TrasnctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16.copyWith(color: Color(0xFFAAAAAA)),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
