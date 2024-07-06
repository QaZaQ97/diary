import 'package:diary/presentation/pages/mood_diary/sections/mood_section.dart';
import 'package:diary/presentation/widgets/custom_box_widget.dart';
import 'package:diary/utils/colors.dart';
import 'package:diary/utils/text_styles.dart';
import 'package:flutter/material.dart';

class MoodSectionWithIcon extends StatefulWidget {
  // int pressedIconIndex;
  MoodSectionWithIcon({super.key});

  @override
  State<MoodSectionWithIcon> createState() => _MoodSectionWithIconState();
}

class _MoodSectionWithIconState extends State<MoodSectionWithIcon> {
  int pressedIconIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Text(
          'Что чуствуешь?',
          style: AppTextStyles.fontSize16w800.copyWith(color: AppColors.titleColor),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 140,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                onTap: () => setState(() => pressedIconIndex = 1),
                child: CustomBoxWidget(
                  image: 'assets/icons/happy.png',
                  text: 'Радость',
                  isPressed: pressedIconIndex == 1 ? true : false,
                ),
              ),
              const SizedBox(width: 12),
              InkWell(
                onTap: () => setState(() => pressedIconIndex = 2),
                child: CustomBoxWidget(
                  image: 'assets/icons/fear.png',
                  text: 'Страх',
                  isPressed: pressedIconIndex == 2 ? true : false,
                ),
              ),
              const SizedBox(width: 12),
              InkWell(
                onTap: () => setState(() => pressedIconIndex = 3),
                child: CustomBoxWidget(
                  image: 'assets/icons/nut.png',
                  text: 'Бешенство',
                  isPressed: pressedIconIndex == 3 ? true : false,
                ),
              ),
              const SizedBox(width: 12),
              InkWell(
                onTap: () => setState(() => pressedIconIndex = 4),
                child: CustomBoxWidget(
                  image: 'assets/icons/sad.png',
                  text: 'Грусть',
                  isPressed: pressedIconIndex == 4 ? true : false,
                ),
              ),
              const SizedBox(width: 12),
              InkWell(
                onTap: () => setState(() => pressedIconIndex = 5),
                child: CustomBoxWidget(
                  image: 'assets/icons/calm.png',
                  text: 'Спокойствие',
                  isPressed: pressedIconIndex == 5 ? true : false,
                ),
              ),
              const SizedBox(width: 12),
              InkWell(
                onTap: () => setState(() => pressedIconIndex = 6),
                child: CustomBoxWidget(
                  image: 'assets/icons/power.png',
                  text: 'Сила',
                  isPressed: pressedIconIndex == 6 ? true : false,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        pressedIconIndex != 0 ? const MoodSection() : const SizedBox(),
      ],
    );
  }
}
