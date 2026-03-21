import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/dots_indicator.dart';
import 'package:responsive_dash_board/widget/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(
      () {
        currentIndex = _pageController.page!.round();
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20(context),
        ),
        SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController: _pageController,
        ),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentPageIndex: currentIndex,
        ),
      ],
    );
  }
}
