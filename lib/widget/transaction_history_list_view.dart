import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';
import 'package:responsive_dash_board/widget/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionItemModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithDrwal: true,
    ),
    TransactionItemModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithDrwal: false,
    ),
    TransactionItemModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM ',
      amount: r'$20,129',
      isWithDrwal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (item) => TransactionItem(transactionItem: item),
          )
          .toList(),
    );
  }
}
