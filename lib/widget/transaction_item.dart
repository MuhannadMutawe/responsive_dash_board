import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionItem,
  });

  final TransactionItemModel transactionItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Color(0XFFFAFAFA),
      child: ListTile(
        title: Text(
          transactionItem.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionItem.date,
          style: AppStyles.styleRegular16(context),
        ),
        trailing: Text(
          transactionItem.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionItem.isWithDrwal
                ? Color(0xffF3735E)
                : Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
