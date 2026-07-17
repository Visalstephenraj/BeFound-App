import 'package:flutter/material.dart';
import 'widgets/greeting_section.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/filter_button.dart';
import 'widgets/quick_action_section.dart';
import 'widgets/recent_posts_section.dart';
import 'widgets/custom_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ❌ Removed appBar
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            GreetingSection(),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: SearchBarWidget()),
                SizedBox(width: 8),
                FilterButton(),
              ],
            ),
            SizedBox(height: 20),
            QuickActionSection(),
            SizedBox(height: 30),
            RecentPostsSection(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
