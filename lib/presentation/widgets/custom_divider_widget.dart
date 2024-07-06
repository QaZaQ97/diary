import 'package:diary/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.indicatorGreyColor,
      ),
    );
  }
}
