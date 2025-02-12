import 'package:flutter/material.dart';

class Step10 extends StatelessWidget {
  const Step10({Key? key}) : super(key: key);

  // Helper function to build a bullet list item with bold text followed by normal text.
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
                'Fokus på Kundefokus og Verdi',
                style: theme.textTheme.titleLarge?.copyWith(fontSize: 32) ??
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // Introductory paragraph using the theme's bodyMedium style.
              Text(
                'Dette siste steget i Aktheuelt-prosessen understreker viktigheten av å sette brukeren og den reelle verdien de oppnår i sentrum for all tjenesteutvikling. Det handler om å sørge for at alle tiltak og forbedringer i tjenesten prioriteres ut fra deres innvirkning på brukeropplevelsen.',
                style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18) ??
                    const TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 16),
              // Bullet list items.
              _buildBulletItem(
                context,
                'Brukersentrert Prioritering: ',
                'Evaluer alle oppgaver og forbedringsforslag ut fra hvordan de påvirker brukeren. Tiltakene bør gi målbar verdi og forbedre opplevelsen for den enkelte.',
              ),
              _buildBulletItem(
                context,
                'Fleksibilitet: ',
                'Vær forberedt på å endre retning basert på nye tilbakemeldinger og innsikter. Bruk data og brukerfeedback for kontinuerlig å revidere prioriteringene.',
              ),
              _buildBulletItem(
                context,
                'Kontinuerlig Forbedring: ',
                'Skap en kultur der man aldri anser tjenesten som “ferdig”. Hver tilbakemelding er en mulighet for forbedring, og hver iterasjon skal føre til en mer verdifull og brukervennlig løsning.',
              ),
              _buildBulletItem(
                context,
                'Verdi og Resultatmåling: ',
                'Sett opp klare KPI-er og mål for å måle effekten av hver funksjon og oppgave. Disse målingene skal brukes for å evaluere suksess og identifisere forbedringsområder.',
              ),
              _buildBulletItem(
                context,
                'Samarbeid med Brukerne: ',
                'Involver brukerne kontinuerlig i beslutningsprosessen, slik at de er med på å definere hva som virkelig gir verdi. Dette sikrer at tjenesten tilpasses deres behov og forventninger.',
              ),
              const SizedBox(height: 16),
              // Concluding paragraph using the theme's bodyMedium style.
              Text(
                'Målet med dette steget er å sikre at alle aktiviteter og løsninger ikke bare er teknisk gjennomførbare, men også gir reell og målbar verdi for brukeren. Ved å holde kundefokus i alle ledd skaper vi en dynamisk og bærekraftig tjeneste som kontinuerlig tilpasses nye behov og utfordringer.',
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
                        'assets/images/Steg10.png',
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