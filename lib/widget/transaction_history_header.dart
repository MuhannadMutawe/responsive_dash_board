import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        Text(
          'See all',
          style: AppStyles.styleMedium16.copyWith(
            color: Color(0XFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
