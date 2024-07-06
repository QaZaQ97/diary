import 'package:diary/presentation/pages/calendar/calendar_screen.dart';
import 'package:diary/presentation/pages/home/home_screen.dart';
import 'package:diary/presentation/pages/mood_diary/mood_diary_screen.dart';
import 'package:diary/presentation/pages/stats/stats_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/diary': (context) => const MoodDiaryScreen(),
        '/stats': (context) =>  const StatsScreen(),
        '/calendar': (context) =>  const CalendarScreen(),
      },
      home: const HomeScreen(),
    );
  }
}
