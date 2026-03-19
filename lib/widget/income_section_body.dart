import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widget/detailed_income_chart.dart';
import 'package:responsive_dash_board/widget/income_char.dart';
import 'package:responsive_dash_board/widget/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: DetailedIncomeChart(),
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
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
          );
  }
}
