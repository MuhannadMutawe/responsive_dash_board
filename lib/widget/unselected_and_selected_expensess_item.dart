import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/all_expensess_item_header.dart';

class UnselectedExpensessItem extends StatelessWidget {
  const UnselectedExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(width: 1, color: Color(0XFFF1F1F1)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            iconImage: itemModel.image,
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class SelectedExpensessItem extends StatelessWidget {
  const SelectedExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            iconImage: itemModel.image,
            isSelected: true,
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14(
              context,
            ).copyWith(color: Color(0xFFFAFAFA)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
