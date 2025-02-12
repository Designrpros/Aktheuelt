import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // Determine the current brightness.
    final brightness = Theme.of(context).brightness;

    // Set the main background color (this remains constant for the app's backdrop).
    final mainBgColor = const Color(0xFF2D3E45);

    // Define colors for cards and text based on dark/light mode.
    final cardColor = brightness == Brightness.dark ? Colors.grey[850] : Colors.white;
    final titleColor = brightness == Brightness.dark ? Colors.white : Colors.black;
    final bodyColor = brightness == Brightness.dark ? Colors.white70 : Colors.black87;

    // Create a theme override for cards and text.
    final themeData = Theme.of(context).copyWith(
      cardTheme: CardTheme(
        color: cardColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      textTheme: Theme.of(context).textTheme.copyWith(
        // Use new style names for Material 3:
        titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: titleColor),
        bodyMedium: TextStyle(fontSize: 16, height: 1.5, color: bodyColor),
      ),
    );

    // Wrap the child with DefaultTextStyle.merge so that any text that does not provide
    // its own style uses our theme's bodyMedium style.
    return Container(
      color: mainBgColor,
      child: Theme(
        data: themeData,
        child: DefaultTextStyle.merge(
          style: themeData.textTheme.bodyMedium!,
          child: child,
        ),
      ),
    );
  }
}