import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/all_expensess_header.dart';
import 'package:responsive_dash_board/widget/all_expensess_item.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          AllExpensessHeader(),
          AllExpensessItem(
            itemModel: AllExpensessItemModel(
              image: Assets.imagesIncome,
              title: 'title',
              date: '15/8/2008',
              price: r'$1535.5',
            ),
          ),
        ],
      ),
    );
  }
}
