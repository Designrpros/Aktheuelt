import 'package:flutter/material.dart';

class Step4 extends StatelessWidget {
  const Step4({Key? key}) : super(key: key);

  // Helper function to build a bullet list item with bold text followed by normal text.
  Widget _buildBulletItem(BuildContext context, String boldText, String normalText) {
    // Retrieve the text style from the theme.
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
          // Bullet symbol using the theme-based style.
          Text("• ", style: textStyle),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: textStyle,
                children: [
                  // Bold portion:
                  TextSpan(
                    text: boldText,
                    style: textStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                  // Regular text:
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
    final theme = Theme.of(context);
    return Center(
      // Constrain the content to a maximum width of 800 pixels.
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: Padding(
          padding: const EdgeInsets.all(32.0), // Approximately 2rem of padding.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Step Title using the theme's titleLarge style.
              Text(
                'Testing og Iterasjon',
                style: theme.textTheme.titleLarge?.copyWith(fontSize: 32) ??
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // Introductory paragraph using the theme's bodyMedium style.
              Text(
                'Etter at konseptene og prototypene er utviklet, er det avgjørende å teste disse med reelle brukere for å sikre at løsningen faktisk møter deres behov. Testing og iterasjon er en kontinuerlig prosess som sørger for at man fanger opp og retter opp i eventuelle feil og forbedringspotensial.',
                style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18) ??
                    const TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 16),
              // Bullet list items.
              _buildBulletItem(
                context,
                'Brukertesting: ',
                'Gjennomfør tester med faktiske brukere – enten gjennom intervjuer, observasjoner eller spørreundersøkelser – for å samle innsikt i hva som fungerer og hva som kan forbedres.',
              ),
              _buildBulletItem(
                context,
                'Evaluering av brukerreisen: ',
                'Kartlegg hele brukerreisen (customer journey) for å identifisere kritiske berøringspunkter og smertepunkter.',
              ),
              _buildBulletItem(
                context,
                'Iterasjon: ',
                'Bruk tilbakemeldingene til å forbedre og justere prototypen. Gjenta testprosessen flere ganger for å oppnå en optimal løsning.',
              ),
              _buildBulletItem(
                context,
                'Dokumentasjon: ',
                'Samle og analyser all tilbakemelding for å kunne prioritere endringer og sikre at de riktige forbedringene blir implementert.',
              ),
              const SizedBox(height: 16),
              // Final paragraph using the theme's bodyMedium style.
              Text(
                'Denne iterasjonsprosessen sikrer at tjenesten utvikles i samsvar med brukernes forventninger og behov, og at den til slutt blir både brukervennlig og bærekraftig.',
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
                        'assets/images/Steg4.png',
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