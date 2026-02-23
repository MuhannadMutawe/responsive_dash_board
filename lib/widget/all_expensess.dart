import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expensess_header.dart';
import 'package:responsive_dash_board/widget/all_expensess_items_list_view.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
