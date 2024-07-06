import 'package:diary/utils/colors.dart';
import 'package:diary/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomBoxWidget extends StatelessWidget {
  final String image;
  final String text;
  final bool isPressed;
  const CustomBoxWidget({
    super.key,
    required this.image,
    required this.text,
    this.isPressed = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84,
      decoration: BoxDecoration(
        border: Border.all(
          color: !isPressed ? Colors.transparent : AppColors.mainOrangeColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(76),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor.withOpacity(0.11),
            offset: const Offset(2, 4),
            blurRadius: 10.8,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          Text(
            text,
            style: AppTextStyles.fontSize12w400,
          ),
        ],
      ),
    );
  }
}
