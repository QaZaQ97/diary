import 'package:diary/presentation/pages/mood_diary/mood_diary_screen.dart';
import 'package:diary/presentation/pages/stats/stats_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Expanded(
          child: _selectedIndex == 0 ? const MoodDiaryScreen() : const StatsScreen(),
        ),
      ],
    );
  }
}
