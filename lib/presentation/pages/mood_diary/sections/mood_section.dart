import 'package:diary/presentation/widgets/custom_text_box_widget.dart';
import 'package:flutter/material.dart';

class MoodSection extends StatefulWidget {
  const MoodSection({super.key});

  @override
  State<MoodSection> createState() => _MoodSectionState();
}

class _MoodSectionState extends State<MoodSection> {
  int isPressed = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () => setState(() => isPressed = 1),
              child: CustomTextBoxWidget(
                text: 'Возбуждение',
                isPressed: isPressed == 1 ? true : false,
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () => setState(() => isPressed = 2),
              child: CustomTextBoxWidget(
                text: 'Восторг',
                isPressed: isPressed == 2 ? true : false,
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () => setState(() => isPressed = 3),
              child: CustomTextBoxWidget(
                text: 'Игривость',
                isPressed: isPressed == 3 ? true : false,
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () => setState(() => isPressed = 4),
              child: CustomTextBoxWidget(
                text: 'Наслаждение',
                isPressed: isPressed == 4 ? true : false,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            InkWell(
              onTap: () => setState(() => isPressed = 5),
              child: CustomTextBoxWidget(
                text: 'Очарование',
                isPressed: isPressed == 5 ? true : false,
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () => setState(() => isPressed = 6),
              child: CustomTextBoxWidget(
                text: 'Осознанность',
                isPressed: isPressed == 6 ? true : false,
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () => setState(() => isPressed = 7),
              child: CustomTextBoxWidget(
                text: 'Смелось',
                isPressed: isPressed == 7 ? true : false,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            InkWell(
              onTap: () => setState(() => isPressed = 8),
              child: CustomTextBoxWidget(
                text: 'Удовольствие',
                isPressed: isPressed == 8 ? true : false,
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () => setState(() => isPressed = 9),
              child: CustomTextBoxWidget(
                text: 'Чувственность',
                isPressed: isPressed == 9 ? true : false,
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () => setState(() => isPressed = 10),
              child: CustomTextBoxWidget(
                text: 'Энергичность',
                isPressed: isPressed == 10 ? true : false,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            InkWell(
              onTap: () => setState(() => isPressed = 11),
              child: CustomTextBoxWidget(
                text: 'Экстравагантность',
                isPressed: isPressed == 11 ? true : false,
              ),
            ),
          ],
        )
      ],
    );
  }
}
