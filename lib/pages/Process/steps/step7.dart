import 'package:flutter/material.dart';

class Step7 extends StatelessWidget {
  const Step7({Key? key}) : super(key: key);

  // Updated helper function that uses the current theme's text style.
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
                'Tverrfaglige Team',
                style: theme.textTheme.titleLarge?.copyWith(fontSize: 32) ??
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // Introductory paragraph using the theme's bodyMedium style.
              Text(
                'Et tverrfaglig team er en nøkkelkomponent for å utvikle innovative og helhetlige tjenester. Ved å kombinere ekspertise fra ulike fagområder oppnås en bredere forståelse av utfordringene, noe som gjør det mulig å skape løsninger som både er teknisk robuste og dypt forankret i brukerens virkelighet.',
                style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18) ??
                    const TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 16),
              // Bullet list items.
              _buildBulletItem(
                context,
                'Variert Kompetanse: ',
                'Teamet bør inkludere designere, utviklere, helsearbeidere, miljøterapeuter og andre relevante fagpersoner for å dekke alle aspekter av tjenesten.',
              ),
              _buildBulletItem(
                context,
                'Samarbeid og Kommunikasjon: ',
                'Gjennom regelmessige møter og tverrfaglig dialog sikres det at alle perspektiver blir hørt og integrert i beslutningsprosessen.',
              ),
              _buildBulletItem(
                context,
                'Erfaringseksperter: ',
                'Involver personer med egenerfaring fra psykisk helse og rus for å bidra med verdifull innsikt og brukersentrert kunnskap.',
              ),
              _buildBulletItem(
                context,
                'Fleksibilitet og Læring: ',
                'Et tverrfaglig team er bedre rustet til å tilpasse seg endringer og lære underveis, noe som fremmer en kultur for kontinuerlig forbedring.',
              ),
              _buildBulletItem(
                context,
                'Felles Mål: ',
                'Når alle medlemmer arbeider mot et felles mål – for eksempel å skape helsefremmende aktiviteter som forebygger utenforskap – oppstår synergier som fører til bedre løsninger.',
              ),
              const SizedBox(height: 16),
              // Final paragraph using the theme's bodyMedium style.
              Text(
                'Ved å bygge et solid tverrfaglig team, legges grunnlaget for en helhetlig og bærekraftig tjenesteutvikling der både brukersentrerte designprinsipper og teknologiske løsninger ivaretas.',
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
                        'assets/images/Steg7.png',
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