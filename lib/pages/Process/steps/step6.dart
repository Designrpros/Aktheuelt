import 'package:flutter/material.dart';

class Step6 extends StatelessWidget {
  const Step6({Key? key}) : super(key: key);

  // Helper function that uses the current theme's bodyMedium style.
  Widget _buildBulletItem(BuildContext context, String boldText, String normalText) {
    final textStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 18,
          height: 1.6,
        ) ?? const TextStyle(fontSize: 18, height: 1.6);
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
                'Iterativ og Inkrementell Utvikling',
                style: theme.textTheme.titleLarge?.copyWith(fontSize: 32) ??
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // Introductory paragraph using the theme's bodyMedium style.
              Text(
                'I denne fasen deles utviklingsarbeidet opp i små, håndterbare iterasjoner – ofte referert til som sprints. Hver iterasjon leverer et inkrement av tjenesten, noe som gir mulighet for rask evaluering og justering. Denne tilnærmingen reduserer risikoen, gir hyppig tilbakemelding og gjør det lettere å tilpasse løsningen basert på endrede krav og innsikt.',
                style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18) ??
                    const TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 16),
              // Bullet list items.
              _buildBulletItem(
                context,
                'Små Sprints: ',
                'Arbeidet planlegges i korte sprints (for eksempel 2–4 uker) der konkrete deler av tjenesten utvikles og leveres.',
              ),
              _buildBulletItem(
                context,
                'Kontinuerlig Evaluering: ',
                'Etter hver sprint gjennomføres evalueringer og tilbakemeldingsrunder med både interne og eksterne interessenter. Dette sikrer at løsningen stadig forbedres.',
              ),
              _buildBulletItem(
                context,
                'Rask Tilpasning: ',
                'Gjennom hyppig leveranse kan teamet raskt reagere på tilbakemeldinger, identifisere feil og implementere endringer – noe som gjør det mulig å levere en løsning som virkelig møter brukernes behov.',
              ),
              _buildBulletItem(
                context,
                'Risiko Reduksjon: ',
                'Ved å fokusere på små, inkrementelle forbedringer reduseres risikoen ved å lansere en fullskala løsning uten at det er testet i mindre deler først.',
              ),
              _buildBulletItem(
                context,
                'Fleksibilitet: ',
                'Iterativ utvikling gir muligheten til å endre retning basert på nye innsikter og markedskrav, noe som er essensielt for å skape en bærekraftig og brukersentrert tjeneste.',
              ),
              const SizedBox(height: 16),
              // Final paragraph using the theme's bodyMedium style.
              Text(
                'Denne metoden gjør det mulig å bygge løsningen gradvis, der hver iterasjon fungerer som en byggestein som til sammen utgjør en komplett og optimalisert tjeneste. Målet er å skape en dynamisk prosess hvor kontinuerlig forbedring og tilpasning er en naturlig del av utviklingssyklusen.',
                style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18) ??
                    const TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 32),
              // Image Container.
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
                        'assets/images/Steg6.png',
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