import 'package:flutter/material.dart';

class Step9 extends StatelessWidget {
  const Step9({Key? key}) : super(key: key);

  // Helper function to build a regular bullet list item.
  Widget _buildBulletItem(BuildContext context, String boldText, String normalText) {
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

  // Helper function for a nested bullet item.
  Widget _buildNestedBulletItem(BuildContext context, String text) {
    final nestedStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 18,
          height: 1.6,
        ) ??
        const TextStyle(fontSize: 18, height: 1.6);
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: nestedStyle),
          Expanded(
            child: Text(
              text,
              style: nestedStyle,
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to build a bullet item that includes nested bullet items.
  Widget _buildBulletItemWithNested(
      BuildContext context, String boldText, String normalText, List<String> nestedItems) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top-level bullet item.
          _buildBulletItem(context, boldText, normalText),
          // Nested bullet items.
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: nestedItems.map((item) => _buildNestedBulletItem(context, item)).toList(),
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
                'Sprint Planlegging og Stand-ups',
                style: theme.textTheme.titleLarge?.copyWith(fontSize: 32) ??
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // Introduction paragraph using the theme's bodyMedium style.
              Text(
                'Denne fasen handler om å strukturere og koordinere teamets arbeid gjennom korte, intensive arbeidsøkter – såkalte sprints – og gjennom daglige stand-up møter. Denne tilnærmingen sikrer at alle er oppdatert, at eventuelle hindringer blir identifisert tidlig, og at teamet jobber effektivt mot felles mål.',
                style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18) ??
                    const TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 16),
              // Bullet list items with nested items.
              _buildBulletItemWithNested(
                context,
                'Sprint Planlegging: ',
                'I starten av hver sprint samles teamet for å definere sprintens mål og identifisere hvilke oppgaver som skal prioriteres. Dette innebærer:',
                [
                  'Gjennomgang og prioritering av produktbacklogen.',
                  'Oppdeling av større oppgaver i mindre, håndterbare deler.',
                  'Definering av klare mål for hva som skal leveres i sprinten.',
                ],
              ),
              _buildBulletItemWithNested(
                context,
                'Daglige Stand-ups: ',
                'Hver dag møtes teamet i korte (vanligvis 15 minutter) stand-up møter. Her deler alle hva de har gjort, hva de planlegger å gjøre den dagen, og om det er noen hindringer de trenger hjelp med. Dette møtet er essensielt for:',
                [
                  'Å opprettholde kontinuerlig kommunikasjon.',
                  'Å identifisere og løse problemer raskt.',
                  'Å justere planer om nødvendig.',
                ],
              ),
              _buildBulletItem(
                context,
                'Sprint Review: ',
                'Ved slutten av hver sprint gjennomgår teamet hva som er oppnådd. Leveransen blir demonstrert for interessenter, og tilbakemeldinger samles inn for å vurdere om sprintens mål er nådd.',
              ),
              _buildBulletItem(
                context,
                'Retrospektiv: ',
                'Etter sprint review møtes teamet for å evaluere arbeidsprosessen. Her diskuteres hva som fungerte bra, hvilke utfordringer som oppstod, og hvordan prosessen kan forbedres i neste sprint. Denne evalueringen bidrar til kontinuerlig læring og forbedring.',
              ),
              const SizedBox(height: 16),
              // Concluding paragraph using the theme's bodyMedium style.
              Text(
                'Ved å strukturere arbeidet med sprint planlegging og daglige stand-ups oppnår man en effektiv arbeidsflyt, rask tilpasning til endrede krav, og et sterkt fokus på kontinuerlig forbedring. Denne metoden sikrer at teamet hele tiden beveger seg mot en mer optimal og brukersentrert løsning.',
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
                        'assets/images/Steg9.png',
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