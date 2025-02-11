import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.95, // Set the height to 95vh
      padding: const EdgeInsets.all(16.0), // Padding around the content
      child: SingleChildScrollView(  // Add this to make content scrollable
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title at the top
            const Text(
              'Introduksjon til Aktheuelt Prosess',
              style: TextStyle(
                fontSize: 28, // Larger font size for the title
                fontWeight: FontWeight.bold, // Bold font for emphasis
                color: Colors.white, // White color to contrast with the dark background
              ),
            ),
            const SizedBox(height: 16), // Space between title and content

            // Content
            const Text(
              'Aktheuelt Prosess kombinerer prinsipper fra service design og agile metoder for å '
              'skape en helhetlig og brukersentrert tilnærming til helsefremmende aktiviteter. '
              'Prosessen fokuserer på å forstå brukerne, co-creation, prototyping, testing, implementering '
              'og kontinuerlig forbedring – alt med mål om å øke deltakelsen, redusere utenforskap og tilby '
              'meningsfulle tjenester.',
              style: TextStyle(
                fontSize: 18, // Regular text size for the content
                height: 1.6, // Line height to improve readability
                color: Colors.white, // White color for text
              ),
            ),
            const SizedBox(height: 20), // Add space between content and images

            // 3 Images without a card, scaling naturally without overflow
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align images to the left
              children: [
                Flexible(
                  child: Image.asset(
                    'assets/images/Aktheuelt1.png',
                    fit: BoxFit.contain, // Ensures images scale without stretching
                  ),
                ),
                const SizedBox(width: 20), // Add space between the images
                Flexible(
                  child: Image.asset(
                    'assets/images/Aktheuelt2.png',
                    fit: BoxFit.contain, // Ensures images scale without stretching
                  ),
                ),
                const SizedBox(width: 20), // Add space between the images
                Flexible(
                  child: Image.asset(
                    'assets/images/Aktheuelt3.png',
                    fit: BoxFit.contain, // Ensures images scale without stretching
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Additional space below the images

            // Circular and Iterative Process explanation in Norwegian
            const Text(
              'Aktheuelt Prosessen er iboende sirkulær og iterativ, med fokus på kontinuerlig forbedring. '
              'Hver fase informerer den neste, og skaper en feedback-loop som gjør det mulig med konstant evaluering '
              'og forbedring. Den iterative naturen gjør prosessen fleksibel, slik at teamet kan tilpasse seg endrede behov, '
              'tilbakemeldinger og resultater. Denne tilnærmingen sikrer at alle beslutninger er basert på faktiske brukerdata og '
              'innsikter, noe som fører til mer effektive og brukersentrerte prosesser.',
              style: TextStyle(
                fontSize: 18, // Regular text size for the content
                height: 1.6, // Line height to improve readability
                color: Colors.white, // White color for text
              ),
            ),
            const SizedBox(height: 20), // Add space between content and images
          ],
        ),
      ),
    );
  }
}