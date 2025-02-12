import 'package:flutter/material.dart';
import './home/introduction.dart'; // Import the Introduction widget

class AktheueltTab extends StatelessWidget {
  const AktheueltTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Padding for nice spacing around the content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title for the HomeView
            const Text(
              'Aktheuelt',
              style: TextStyle(
                fontSize: 50, // Larger font size for the title
                fontWeight: FontWeight.bold, // Bold font for emphasis
                color: Colors.white, // White color to contrast with the dark background
              ),
            ),
            const SizedBox(height: 16), // Space between title and content
            
            // Add the Introduction widget here
            const Introduction(),

            const SizedBox(height: 20), // Add some space between introduction and image grid
          ],
        ),
      ),
    );
  }
}