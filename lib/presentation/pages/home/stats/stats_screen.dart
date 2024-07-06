import 'package:diary/presentation/widgets/custom_app_bar.dart';
import 'package:diary/presentation/widgets/swicher_widget.dart';
import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            SwicherWidget(labelIndex: 1),
            SizedBox(height: 20),
            Center(
              child: Text('Экран статистики'),
            ),
          ],
        ),
      ),
    );
  }
}
