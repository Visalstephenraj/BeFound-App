import 'package:flutter/material.dart';

class RecentPostCard extends StatelessWidget {
  final String title;
  final String location;
  final String time;
  final Color tagColor;
  final String tagText;
  final String imagePath;

  const RecentPostCard({
    super.key,
    required this.title,
    required this.location,
    required this.time,
    required this.tagColor,
    required this.tagText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(imagePath, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text("$location • $time"),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: tagColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(tagText, style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
