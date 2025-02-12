import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  /// Returns a Card widget that uses the global theme's colors and text styles.
  Widget buildCard(BuildContext context, String title, String content) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Use the theme's titleLarge style for the title.
            Text(
              title,
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            // Use the theme's bodyMedium style for the content.
            Text(
              content,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // The AppBackground widget (applied globally) sets the main background color.
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Introduction card
            buildCard(
              context,
              'Introduksjon til Aktheuelt Prosess',
              'Aktheuelt Prosess kombinerer prinsipper fra service design og agile metoder for å skape en helhetlig og brukersentrert tilnærming til helsefremmende aktiviteter. Prosessen fokuserer på å forstå brukerne, co-creation, prototyping, testing, implementering og kontinuerlig forbedring – alt med mål om å øke deltakelsen, redusere utenforskap og tilby meningsfulle tjenester.',
            ),
            // Step 1
            buildCard(
              context,
              'Forstå Brukerne og Konteksten',
              'I denne fasen fokuserer man på å samle dyptgående innsikt om brukerne og konteksten de opererer i. Dette inkluderer innsiktsinnhenting gjennom kvalitative og kvantitative metoder, utvikling av realistiske personas, kartlegging av brukerreiser og en kontekstuell analyse for å forstå både eksterne og interne faktorer som påvirker brukeropplevelsen.',
            ),
            // Step 2
            buildCard(
              context,
              'Co-Creation og Idéutvikling',
              'Denne fasen setter kreativitet og samarbeid i fokus. Gjennom workshops, brainstorming, co-design og idéutvikling engasjeres både interne og eksterne aktører for å generere innovative løsninger som er tilpasset brukernes reelle behov.',
            ),
            // Step 3
            buildCard(
              context,
              'Konseptualisering og Prototyping',
              'Her omformes de innledende ideene til konkrete konsepter. Ved hjelp av service blueprinting, konseptutforming og prototyping utvikles visuelle og funksjonelle modeller. Prototypene testes og itereres basert på tilbakemeldinger fra brukerne for å sikre at løsningen er både brukervennlig og funksjonell.',
            ),
            // Step 4
            buildCard(
              context,
              'Testing og Iterasjon',
              'Etter utvikling av konsepter og prototyper testes de med faktiske brukere. Gjennom brukertesting, evaluering av brukerreiser, iterasjon og dokumentasjon av tilbakemeldinger sikres det at løsningen kontinuerlig forbedres og tilpasses reelle brukerbehov.',
            ),
            // Step 5
            buildCard(
              context,
              'Implementering og Evaluering',
              'Med validerte prototyper tas neste steg: implementering av den endelige løsningen. Dette innebærer utrulling med et tverrfaglig team, overvåking og måling av ytelse, evaluering av resultater og kontinuerlige justeringer for å sikre at løsningen opprettholder høy kvalitet og relevans over tid.',
            ),
            // Step 6
            buildCard(
              context,
              'Iterativ og Inkrementell Utvikling',
              'Utviklingsarbeidet deles opp i små, håndterbare iterasjoner (sprints) der hvert inkrement testes og evalueres. Denne tilnærmingen reduserer risiko, gir rask tilpasning til tilbakemeldinger, og sikrer at løsningen stadig forbedres gjennom små, inkrementelle endringer.',
            ),
            // Step 7
            buildCard(
              context,
              'Tverrfaglige Team',
              'Et solid tverrfaglig team er avgjørende for å utvikle robuste og brukersentrerte løsninger. Ved å kombinere ekspertise fra ulike fagområder – design, utvikling, helse, terapi og mer – sikres et helhetlig perspektiv som fremmer innovasjon, kommunikasjon og kontinuerlig læring.',
            ),
            // Step 8
            buildCard(
              context,
              'Hyppig Leveranse og Tilbakemelding',
              'Denne fasen fokuserer på å levere små, fungerende deler av tjenesten regelmessig. Hyppige leveranser og umiddelbar tilbakemelding fra brukere gjør det mulig å iterere raskt, oppdage feil tidlig og sikre at løsningen forblir robust og brukersentrert.',
            ),
            // Step 9
            buildCard(
              context,
              'Sprint Planlegging og Stand-ups',
              'Her struktureres teamets arbeid gjennom sprint planlegging, daglige stand-up møter, sprint review og retrospektiv. Denne strukturerte tilnærmingen sikrer kontinuerlig kommunikasjon, rask identifisering av problemer, justering av planer og en effektiv arbeidsflyt mot felles mål.',
            ),
            // Step 10
            buildCard(
              context,
              'Fokus på Kundefokus og Verdi',
              'Det siste steget understreker viktigheten av å holde brukeren i sentrum. Ved å evaluere oppgaver basert på brukerens behov, kombinert med fleksibilitet, kontinuerlig forbedring, klare KPI-er og tett samarbeid med brukerne, sikres en dynamisk, verdiskapende og bærekraftig tjeneste.',
            ),
          ],
        ),
      ),
    );
  }
}