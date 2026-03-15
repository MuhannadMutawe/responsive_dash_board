import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChar extends StatelessWidget {
  const IncomeChar({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(getCharData());
  }

  PieChartData getCharData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          color: Color(0xff208CC8),
        ),
        PieChartSectionData(
          value: 25,
          color: Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          value: 20,
          color: Color(0xff064061),
        ),
        PieChartSectionData(
          value: 22,
          color: Color(0xffE2DECD),
        ),
      ],
    );
  }
}
