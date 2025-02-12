import 'package:flutter/material.dart';

class Step1 extends StatelessWidget {
  const Step1({Key? key}) : super(key: key);

  // Helper function to build a bullet list item with a bold title and normal description.
  Widget _buildBulletItem(BuildContext context, String boldText, String normalText) {
    // Retrieve the text style for body text from the theme.
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
          // Use the theme-based text style for the bullet symbol.
          Text(
            "• ",
            style: textStyle,
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: textStyle,
                children: [
                  TextSpan(
                    text: boldText,
                    style: textStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: normalText,
                  ),
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
    return Center(
      // Center the content and constrain the maximum width to 800 pixels.
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: Padding(
          padding: const EdgeInsets.all(32.0), // 2rem ~ 32 pixels of padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Step Title
              const Text(
                'Forstå Brukerne og Konteksten',
                style: TextStyle(
                  fontSize: 32, // Approximation for 2rem
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // First Paragraph
              const Text(
                'For å utvikle en tjeneste som virkelig møter brukernes behov, er det avgjørende å starte med å forstå hvem brukerne er, hvilke utfordringer de møter, og i hvilken kontekst de opererer. Dette steget utgjør fundamentet for hele prosessen.',
                style: TextStyle(
                  fontSize: 18,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 16),
              // Bullet List Items
              _buildBulletItem(
                context,
                'Innsiktsinnhenting: ',
                'Gjennomfør både kvalitative og kvantitative undersøkelser. Dette inkluderer dybdeintervjuer, spørreundersøkelser, fokusgrupper og observasjoner for å samle detaljert informasjon om brukernes erfaringer, behov og smertepunkter.',
              ),
              _buildBulletItem(
                context,
                'Personas: ',
                'Utarbeid realistiske personas basert på innsamlet data. Disse fiktive karakterene representerer de ulike segmentene av målgruppen og hjelper teamet med å holde brukersentreringen i fokus gjennom hele designprosessen.',
              ),
              _buildBulletItem(
                context,
                'Brukerreiser: ',
                'Kartlegg komplette brukerreiser (customer journey mapping) for å visualisere hele opplevelsen fra start til slutt. Identifiser kritiske øyeblikk, smertepunkter og muligheter for forbedringer.',
              ),
              _buildBulletItem(
                context,
                'Kontekstuell Analyse: ',
                'Analyser den sosiale, kulturelle og fysiske konteksten der tjenesten skal leveres. Dette innebærer å se på eksterne faktorer (som lokalmiljø, infrastruktur og sosiale nettverk) samt interne prosesser som kan påvirke brukeropplevelsen.',
              ),
              const SizedBox(height: 16),
              // Final Paragraph
              const Text(
                'Resultatet av dette steget skal gi et solid kunnskapsgrunnlag, som teamet kan bygge videre på i de neste fasene av prosessen. Innsikten danner basis for å skape en tjeneste som ikke bare er funksjonell, men også meningsfull og tilpasset de virkelige behovene til brukerne.',
                style: TextStyle(
                  fontSize: 18,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 32),
              // Image Container
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
                        'assets/images/Steg1.png',
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