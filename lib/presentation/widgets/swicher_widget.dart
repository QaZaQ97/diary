import 'package:diary/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SwicherWidget extends StatefulWidget {
  final int labelIndex;
  const SwicherWidget({super.key, required this.labelIndex});

  @override
  State<SwicherWidget> createState() => _SwicherWidgetState();
}

class _SwicherWidgetState extends State<SwicherWidget> {
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      initialLabelIndex: widget.labelIndex,
      animate: true,
      animationDuration: 800,
      totalSwitches: 2,
      curve: Curves.ease,
      minWidth: double.infinity,
      minHeight: 30,
      fontSize: 12,
      cornerRadius: 46,
      radiusStyle: true,
      labels: const ['Дневник настроения', 'Статистика'],
      activeBgColor: const [AppColors.mainOrangeColor],
      inactiveFgColor: AppColors.mainGreyColor,
      inactiveBgColor: AppColors.inactiveColor,
      onToggle: (index) {
        if (index == 0) {
          Navigator.pushNamed(context, '/diary');
        } else if (index == 1) {
          Navigator.pushNamed(context, '/stats');
        }
      },
    );
  }
}
