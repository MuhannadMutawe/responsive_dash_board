import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/income_char.dart';
import 'package:responsive_dash_board/widget/income_details.dart';
import 'package:responsive_dash_board/widget/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: IncomeChar(),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
