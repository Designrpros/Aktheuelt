// lib/components/app_background.dart
import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      // 1) Main background color (#2D3E45)
      color: const Color(0xFF2D3E45), // Main background color

      // 2) The rest of your app’s content (Scaffold, tabs, etc.) goes here
      child: Stack(
        children: [
          // 3) The content that will sit on top of the background
          child,
        ],
      ),
    );
  }
}