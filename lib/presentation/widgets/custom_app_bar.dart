import 'package:diary/utils/colors.dart';
import 'package:diary/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

PreferredSizeWidget customAppBar(BuildContext context) {
  initializeDateFormatting('ru', null);
  final now = DateTime.now();
  String formattedDate = DateFormat('d MMMM HH:mm', 'ru').format(now);
  return AppBar(
    elevation: 0,
    centerTitle: true,
    backgroundColor: AppColors.backgroundColor,
    title: Text(
      formattedDate.toString(),
      style: AppTextStyles.fontSize18w400.copyWith(color: AppColors.mainGreyColor),
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/calendar');
        },
        icon: const Icon(Icons.calendar_month, color: AppColors.mainGreyColor),
      )
    ],
  );
}
