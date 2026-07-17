import 'package:flutter/material.dart';
import 'recent_post_card.dart';

class RecentPostsSection extends StatelessWidget {
  const RecentPostsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Recent Posts",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        RecentPostCard(
          title: "Lost: Black Watch",
          location: "Anna Nagar, Chennai",
          time: "2 hours ago",
          tagColor: Colors.red,
          tagText: "Lost",
          imagePath: "assets/images/watch.png",
        ),
        SizedBox(height: 12),
        RecentPostCard(
          title: "Found: Brown Wallet",
          location: "T. Nagar, Chennai",
          time: "5 hours ago",
          tagColor: Colors.green,
          tagText: "Found",
          imagePath: "assets/images/wallet.png",
        ),
      ],
    );
  }
}
