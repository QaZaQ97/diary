import 'package:diary/presentation/pages/mood_diary/sections/mood_section_with_icons.dart';
import 'package:diary/presentation/pages/mood_diary/sections/stress_indicator_section.dart';
import 'package:diary/presentation/widgets/custom_app_bar.dart';
import 'package:diary/presentation/widgets/swicher_widget.dart';
import 'package:diary/utils/colors.dart';
import 'package:diary/utils/text_styles.dart';
import 'package:flutter/material.dart';

class MoodDiaryScreen extends StatefulWidget {
  const MoodDiaryScreen({super.key});

  @override
  State<MoodDiaryScreen> createState() => _MoodDiaryScreenState();
}

class _MoodDiaryScreenState extends State<MoodDiaryScreen> {
  String textController = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              /// Switcher to switch beetwen Mood and Stats screens
              const SwicherWidget(labelIndex: 0),
              const SizedBox(height: 20),

              /// Mood icons list view
              MoodSectionWithIcon(),
              const SizedBox(height: 30),

              /// Stress indicator
              Text(
                'Уровень стресса',
                style: AppTextStyles.fontSize16w800.copyWith(color: AppColors.titleColor),
              ),
              const SizedBox(height: 20),
              const StressIndicatorSection(firstLabel: 'Низкий', secondLabel: 'Высокий'),
              const SizedBox(height: 36),
              
              /// Self-esteem indicator 
              Text(
                'Самооценка',
                style: AppTextStyles.fontSize16w800.copyWith(color: AppColors.titleColor),
              ),
              const SizedBox(height: 20),
              const StressIndicatorSection(firstLabel: 'Неуверенность', secondLabel: 'Уверенность'),
              const SizedBox(height: 36),

              /// Note Text field
              Text(
                'Заметки',
                style: AppTextStyles.fontSize16w800.copyWith(color: AppColors.titleColor),
              ),
              const SizedBox(height: 20),
              Container(
                height: 90,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
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
                child: TextField(
                  maxLines: 10,
                  cursorColor: Colors.black,
                  cursorWidth: 1,
                  controller: TextEditingController(text: textController),
                  onChanged: (value) => textController = value,
                  onTapOutside: (event) {
                    setState(() => FocusManager.instance.primaryFocus?.unfocus());
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Введите заметку',
                    hintStyle: TextStyle(color: AppColors.indicatorGreyColor),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              
              /// Main button to save
              OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    textController == '' ? AppColors.inactiveColor : AppColors.mainOrangeColor,
                  ),
                  foregroundColor: MaterialStatePropertyAll(
                    textController == '' ? AppColors.mainGreyColor : Colors.white,
                  ),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(70))),
                  minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 44)),
                ),
                onPressed: () {},
                child: const Text(
                  'Сохранить',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
