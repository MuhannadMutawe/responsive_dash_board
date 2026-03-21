import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor = const Color(0xFF4DB7F2),
    required this.label,
    this.textColor,
  });

  final Color? backgroundColor, textColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Text(
          label,
          style: AppStyles.styleSemiBold18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
