import 'package:flutter/material.dart';

class Step3 extends StatelessWidget {
  const Step3({Key? key}) : super(key: key);

  // Updated helper function to build a bullet list item using the current theme.
  Widget _buildBulletItem(BuildContext context, String boldText, String normalText) {
    // Retrieve the base style from the theme.
    final textStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 18,
          height: 1.6,
        ) ??
        const TextStyle(fontSize: 18, height: 1.6);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Use the theme's text style for the bullet symbol.
          Text("• ", style: textStyle),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: textStyle,
                children: [
                  // Bold part uses a copy with bold font weight.
                  TextSpan(
                    text: boldText,
                    style: textStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: normalText),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Retrieve the theme.
    final theme = Theme.of(context);
    return Center(
      // Constrain content to a maximum width of 800 pixels.
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: Padding(
          padding: const EdgeInsets.all(32.0), // Approximate for 2rem padding.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Step Title using the theme's titleLarge style.
              Text(
                'Konseptualisering og Prototyping',
                style: theme.textTheme.titleLarge?.copyWith(fontSize: 32) ??
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // Introductory paragraph using the theme's bodyMedium style.
              Text(
                'I denne fasen omformes de innledende ideene til konkrete konsepter. Gjennom konseptualisering og prototyping skapes en visuell og funksjonell representasjon av tjenesten – både “bak kulissene” og i kontakt med brukeren.',
                style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18) ??
                    const TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 16),
              // Bullet list items.
              _buildBulletItem(
                context,
                'Service Blueprinting: ',
                'Kartlegg tjenestens flyt ved å lage detaljerte oversikter som viser både frontstage (brukeropplevelse) og backstage (interne prosesser). Dette hjelper med å identifisere kritiske berøringspunkter og forbedringsmuligheter.',
              ),
              _buildBulletItem(
                context,
                'Konseptutforming: ',
                'Utvikle klare konseptbeskrivelser og visuelle modeller for hvordan tjenesten skal fungere. Her benyttes verktøy som skisser, diagrammer og storyboards.',
              ),
              _buildBulletItem(
                context,
                'Prototyping: ',
                'Lag både lav- og høyoppløselige prototyper. Lavoppløselige prototyper (for eksempel papirprototyper eller enkle digitale modeller) gjør det raskt mulig å teste ideer, mens høyoppløselige prototyper gir en nærmere simulering av den endelige tjenesten.',
              ),
              _buildBulletItem(
                context,
                'Iterasjon: ',
                'Prototypene testes med brukere, og tilbakemeldingene brukes til å forbedre konseptet. Denne iterasjonsprosessen sikrer at løsningen blir så brukervennlig og funksjonell som mulig.',
              ),
              const SizedBox(height: 16),
              // Final paragraph using the theme's bodyMedium style.
              Text(
                'Denne fasen er kritisk for å validere idéene før full implementering. Ved å kombinere service blueprinting med rask prototyping kan teamet identifisere og rette opp eventuelle feil tidlig, og sikre at den endelige løsningen møter både brukerens og forretningsmessige behov.',
                style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18) ??
                    const TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 32),
              // Image container.
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 500),
                  child: Container(
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
                        'assets/images/Steg3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}