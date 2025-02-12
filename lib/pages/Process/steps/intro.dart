// lib/pages/process/steps/intro.dart
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Equivalent to 2rem padding (approximately 32 pixels) – adjust as needed.
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Step Title
          const Text(
            'Introduksjon til Aktheuelt Prosess',
            style: TextStyle(
              fontSize: 32, // 2rem approximated as 32px
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          // Step Content
          const Text(
            'Aktheuelt Prosess kombinerer prinsipper fra service design og agile metoder for å '
            'skape en helhetlig og brukersentrert tilnærming til helsefremmende aktiviteter. Prosessen '
            'fokuserer på å forstå brukerne, co-creation, prototyping, testing, implementering og kontinuerlig '
            'forbedring – alt med mål om å øke deltakelsen, redusere utenforskap og tilby meningsfulle tjenester.',
            style: TextStyle(
              fontSize: 18, // 1.125rem approximated as 18px
              height: 1.6,  // Line height set to 1.6 for readability
            ),
          ),
          const SizedBox(height: 32),
          // Images Row
          LayoutBuilder(
            builder: (context, constraints) {
              // Calculate each image's width: 30% of the available width but no more than 250 pixels.
              double imageWidth = constraints.maxWidth * 0.3;
              if (imageWidth > 250) imageWidth = 250;
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildImage('assets/images/Aktheuelt1.png', imageWidth),
                  const SizedBox(width: 16),
                  _buildImage('assets/images/Aktheuelt2.png', imageWidth),
                  const SizedBox(width: 16),
                  _buildImage('assets/images/Aktheuelt3.png', imageWidth),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  // Helper widget to build each image with a border radius and a subtle shadow.
  Widget _buildImage(String imagePath, double width) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imagePath,
          width: width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}