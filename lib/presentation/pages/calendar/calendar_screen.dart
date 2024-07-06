import 'package:diary/extensions/string_extension.dart';
import 'package:diary/utils/colors.dart';
import 'package:diary/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(18),
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset('assets/icons/cancel.svg'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              'Сегодня',
              style: AppTextStyles.fontSize18w600.copyWith(color: AppColors.mainGreyColor),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('ПН', style: AppTextStyles.fontSize12w600.copyWith(color: AppColors.mainGreyColor)),
                  Text('ВТ', style: AppTextStyles.fontSize12w600.copyWith(color: AppColors.mainGreyColor)),
                  Text('СР', style: AppTextStyles.fontSize12w600.copyWith(color: AppColors.mainGreyColor)),
                  Text('ЧТ', style: AppTextStyles.fontSize12w600.copyWith(color: AppColors.mainGreyColor)),
                  Text('ПТ', style: AppTextStyles.fontSize12w600.copyWith(color: AppColors.mainGreyColor)),
                  Text('СБ', style: AppTextStyles.fontSize12w600.copyWith(color: AppColors.mainGreyColor)),
                  Text('ВС', style: AppTextStyles.fontSize12w600.copyWith(color: AppColors.mainGreyColor)),
                ],
              ),
            ),
            Expanded(
              child: PagedVerticalCalendar(
                initialDate: DateTime.now(),
                startWeekWithSunday: true,
                monthBuilder: (context, month, year) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(DateFormat('yyyy', 'ru').format(DateTime(year)),
                              style: AppTextStyles.fontSize16w700.copyWith(color: AppColors.mainGreyColor)),
                          const SizedBox(height: 10),
                          Text(DateFormat('MMMM', 'ru').format(DateTime(year, month)).capitalize(),
                              style: AppTextStyles.fontSize24w700.copyWith(color: AppColors.titleColor)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
