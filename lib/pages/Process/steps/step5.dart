import 'package:flutter/material.dart';

class Step5 extends StatelessWidget {
  const Step5({Key? key}) : super(key: key);

  // Updated helper function that uses the current theme's text style.
  Widget _buildBulletItem(BuildContext context, String boldText, String normalText) {
    // Retrieve the base text style from the theme.
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
      // Constrain content to a maximum width of 800 pixels.
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: Padding(
          padding: const EdgeInsets.all(32.0), // Approximately 2rem of padding.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Step Title using the theme's titleLarge style.
              Text(
                'Implementering og Evaluering',
                style: theme.textTheme.titleLarge?.copyWith(fontSize: 32) ??
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // Introductory paragraph using the theme's bodyMedium style.
              Text(
                'Etter at konseptene og prototypene er testet og iterert, er neste steg å implementere den endelige løsningen. Dette steget handler om å rulle ut tjenesten i en reell setting, samtidig som man kontinuerlig evaluerer og forbedrer tilbudet basert på faktiske resultater og tilbakemeldinger.',
                style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18) ??
                    const TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 16),
              // Bullet list items.
              _buildBulletItem(
                context,
                'Implementering: ',
                'Rull ut tjenesten med et dedikert, tverrfaglig team. Dette innebærer opplæring av ansatte, oppsett av nødvendige systemer og tilpasning av arbeidsprosesser for å sikre en smidig overgang fra prototype til fullverdig tjeneste.',
              ),
              _buildBulletItem(
                context,
                'Overvåking og Måling: ',
                'Etabler måleparametere og verktøy for å følge med på hvordan tjenesten fungerer i praksis. Dette kan inkludere brukerundersøkelser, KPI-er og tilbakemeldinger fra både ansatte og brukere.',
              ),
              _buildBulletItem(
                context,
                'Evaluering: ',
                'Analyser data og tilbakemeldinger regelmessig for å vurdere tjenestens effekt og identifisere forbedringsområder. Evalueringen bør se både på kvantitative mål (for eksempel antall brukere, responstid) og kvalitative tilbakemeldinger.',
              ),
              _buildBulletItem(
                context,
                'Justering og Forbedring: ',
                'Basert på evalueringen skal tjenesten kontinuerlig tilpasses og forbedres. Dette kan innebære mindre endringer eller større iterasjoner for å optimalisere brukeropplevelsen og tjenestens effektivitet.',
              ),
              _buildBulletItem(
                context,
                'Langsiktig Oppfølging: ',
                'Sikre at det etableres rutiner for jevnlig oppfølging og vedlikehold. Tjenesten skal ikke bare lanseres, men også utvikles over tid i takt med nye behov og utfordringer.',
              ),
              const SizedBox(height: 16),
              // Final paragraph using the theme's bodyMedium style.
              Text(
                'Ved å kombinere en strukturert implementeringsprosess med kontinuerlig evaluering, kan man sikre at den endelige løsningen ikke bare leveres, men også opprettholder høy kvalitet og tilpasningsevne i møte med endrede behov og omstendigheter.',
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
                        'assets/images/Steg5.png',
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