import 'package:flutter/material.dart';

class Step8 extends StatelessWidget {
  const Step8({Key? key}) : super(key: key);

  // Updated helper function to build a bullet list item using the current theme's text style.
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
                'Hyppig Leveranse og Tilbakemelding',
                style: theme.textTheme.titleLarge?.copyWith(fontSize: 32) ??
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // Introductory paragraph using the theme's bodyMedium style.
              Text(
                'Denne fasen handler om å levere små, fungerende inkrementer av tjenesten med jevne mellomrom. Målet er å få rask og kontinuerlig tilbakemelding fra brukere og interessenter slik at vi kan iterere og forbedre løsningen fortløpende.',
                style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18) ??
                    const TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 16),
              // Bullet list items.
              _buildBulletItem(
                context,
                'Regelmessige Inkrementer: ',
                'Arbeidet deles opp i små leveranser (sprints) der konkrete deler av løsningen utvikles, testes og evalueres.',
              ),
              _buildBulletItem(
                context,
                'Umiddelbar Tilbakemelding: ',
                'Hver leveranse evalueres med direkte tilbakemeldinger fra brukere, som kan komme via intervjuer, brukertesting eller digitale skjemaer.',
              ),
              _buildBulletItem(
                context,
                'Rask Iterasjon: ',
                'Tilbakemeldingene brukes til å raskt iterere løsningen, identifisere forbedringsområder og implementere nødvendige endringer i neste sprint.',
              ),
              _buildBulletItem(
                context,
                'Kvalitetsfokus: ',
                'Hyppige leveranser gir en mulighet til å oppdage og løse problemer tidlig, noe som bidrar til en mer robust og brukersentrert tjeneste.',
              ),
              const SizedBox(height: 16),
              // Final paragraph using the theme's bodyMedium style.
              Text(
                'Ved å kombinere hyppige leveranser med kontinuerlig tilbakemelding, skaper vi en dynamisk prosess der tjenesten stadig tilpasses og forbedres i takt med brukernes behov og markedets krav.',
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
                        'assets/images/Steg8.png',
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