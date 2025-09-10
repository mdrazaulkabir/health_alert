import 'package:flutter/material.dart';
class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback viewAll;

  const SectionHeader({required this.title, required this.viewAll});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TextButton(
            onPressed: viewAll,
            child: Text("View all",
                style: TextStyle(color: Colors.blue.shade700, fontSize: 14)),
          )
        ],
      ),
    );
  }
}