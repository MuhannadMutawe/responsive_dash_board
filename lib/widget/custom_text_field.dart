import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xFFFAFAFA),
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16.copyWith(
          color: const Color(0xFFAAAAAA),
        ),
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFFFAFAFA),
      ),
      borderRadius: BorderRadius.circular(14),
    );
  }
}
