import 'package:diary/utils/colors.dart';
import 'package:diary/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextBoxWidget extends StatelessWidget {
  final String text;
  final bool isPressed;
  const CustomTextBoxWidget({
    super.key,
    required this.text,
    this.isPressed = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        color: isPressed ? AppColors.mainOrangeColor : Colors.white,
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor.withOpacity(0.11),
            offset: const Offset(2, 4),
            blurRadius: 10.8,
          ),
        ],
      ),
      child: Text(
        text,
        style: AppTextStyles.fontSize11w400.copyWith(
          color: !isPressed ? AppColors.titleColor : Colors.white,
        ),
      ),
    );
  }
}
