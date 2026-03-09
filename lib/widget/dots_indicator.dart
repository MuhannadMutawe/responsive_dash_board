import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    this.currentPageIndex = 0,
  });

  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CustomDotIndicator(isActive: index == currentPageIndex),
          );
        },
      ),
    );
  }
}
