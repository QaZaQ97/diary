import 'package:diary/presentation/widgets/custom_divider_widget.dart';
import 'package:diary/utils/colors.dart';
import 'package:diary/utils/text_styles.dart';
import 'package:flutter/material.dart';

class StressIndicatorSection extends StatefulWidget {
  final String firstLabel;
  final String secondLabel;
  const StressIndicatorSection({
    super.key,
    required this.firstLabel,
    required this.secondLabel,
  });

  @override
  State<StressIndicatorSection> createState() => _StressIndicatorSectionState();
}

class _StressIndicatorSectionState extends State<StressIndicatorSection> {
  double _currentSliderValue = 5;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor.withOpacity(0.11),
            offset: const Offset(2, 4),
            blurRadius: 10.8,
          ),
        ],
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDividerWidget(),
                CustomDividerWidget(),
                CustomDividerWidget(),
                CustomDividerWidget(),
                CustomDividerWidget(),
                CustomDividerWidget(),
              ],
            ),
          ),
          Slider(
            inactiveColor: AppColors.indicatorGreyColor,
            activeColor: _currentSliderValue == 5 ? AppColors.indicatorGreyColor : AppColors.mainOrangeColor,
            value: _currentSliderValue,
            max: 10,
            onChanged: (value) {
              setState(() => _currentSliderValue = value);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.firstLabel,
                  style: AppTextStyles.fontSize11w400.copyWith(color: AppColors.greyTextColor),
                ),
                Text(
                  widget.secondLabel,
                  style: AppTextStyles.fontSize11w400.copyWith(color: AppColors.greyTextColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
