import 'package:flutter/material.dart';

class Step2 extends StatelessWidget {
  const Step2({Key? key}) : super(key: key);

  // Updated helper function to accept BuildContext and use theme-based text styles.
  Widget _buildBulletItem(BuildContext context, String boldText, String normalText) {
    // Get the text style from the theme (using bodyMedium defined in AppBackground).
    final textStyle = Theme.of(context).textTheme.bodyMedium ??
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
    // Use the theme for the step title and paragraph texts.
    final theme = Theme.of(context);
    return Center(
      // Constrain content to a max-width of 800 pixels.
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: Padding(
          padding: const EdgeInsets.all(32.0), // Equivalent to 2rem padding.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Step Title using the theme's titleLarge style.
              Text(
                'Co-Creation og Idéutvikling',
                style: theme.textTheme.titleLarge?.copyWith(fontSize: 32) ??
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // Introductory paragraph using the theme's bodyMedium style.
              Text(
                'I denne fasen settes kreativitet og samarbeid i fokus. Målet er å engasjere både interne og eksterne aktører for å utvikle innovative løsninger som møter de reelle behovene til brukerne. Ved å inkludere perspektiver fra ulike grupper, kan vi skape et bredt spekter av ideer og filtrere ut de mest lovende konseptene.',
                style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18) ??
                    const TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 16),
              // Bullet list items.
              _buildBulletItem(
                context,
                'Workshops og Samarbeid: ',
                'Arranger interaktive workshops hvor brukere, ansatte og andre interessenter bidrar med ideer. Disse sesjonene legger grunnlaget for en felles visjon og åpner for tverrfaglig samarbeid.',
              ),
              _buildBulletItem(
                context,
                'Brainstorming: ',
                'Benytt brainstorming-teknikker for å generere et stort antall ideer. Her oppfordres alle til å tenke fritt og uten begrensninger.',
              ),
              _buildBulletItem(
                context,
                'Co-design: ',
                'Involver brukerne direkte i designprosessen. Ved å la dem bidra med sine erfaringer og ønsker, sikrer vi at løsningen tilpasses deres virkelighet.',
              ),
              _buildBulletItem(
                context,
                'Idéutvikling: ',
                'Bruk metoder som mindmapping og idédugnad for å organisere og utvikle de innledende ideene til konkrete konsepter. Dette gir et solid grunnlag for de neste fasene i prosessen.',
              ),
              const SizedBox(height: 16),
              // Final paragraph using the theme's bodyMedium style.
              Text(
                'Denne fasen er avgjørende for å åpne opp for nye perspektiver og skape en innovativ tjeneste. Gjennom co-creation og idéutvikling sikres det at løsningene er brukersentrerte og har et sterkt fundament for videre utvikling.',
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
                        'assets/images/Steg2.png',
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