import 'package:flutter/material.dart';

// Import your step widgets:
import 'steps/intro.dart';
import 'steps/step1.dart';
import 'steps/step2.dart';
import 'steps/step3.dart';
import 'steps/step4.dart';
import 'steps/step5.dart';
import 'steps/step6.dart';
import 'steps/step7.dart';
import 'steps/step8.dart';
import 'steps/step9.dart';
import 'steps/step10.dart';

import 'process_tabs.dart';

class ProcessStep {
  final String label;
  final Widget content;
  ProcessStep({required this.label, required this.content});
}

class ProcessPage extends StatefulWidget {
  const ProcessPage({Key? key}) : super(key: key);

  @override
  _ProcessPageState createState() => _ProcessPageState();
}

class _ProcessPageState extends State<ProcessPage> {
  int activeTab = 0;
  late final List<ProcessStep> steps;

  @override
  void initState() {
    super.initState();
    steps = [
      ProcessStep(label: 'Introduksjon', content: const Intro()),
      ProcessStep(label: 'Forstå Brukerne', content: const Step1()),
      ProcessStep(label: 'Co-Creation', content: const Step2()),
      ProcessStep(label: 'Prototyping', content: const Step3()),
      ProcessStep(label: 'Testing', content: const Step4()),
      ProcessStep(label: 'Implementering', content: const Step5()),
      ProcessStep(label: 'Iterativ Utvikling', content: const Step6()),
      ProcessStep(label: 'Tverrfaglige Team', content: const Step7()),
      ProcessStep(label: 'Leveranse & Tilbakemelding', content: const Step8()),
      ProcessStep(label: 'Sprint Planlegging', content: const Step9()),
      ProcessStep(label: 'Kundefokus', content: const Step10()),
    ];
  }

  void _onTabSelected(int index) {
    setState(() {
      activeTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // Adjust shadow based on brightness:
    final shadowColor = theme.brightness == Brightness.dark
        ? Colors.black.withOpacity(0.5)
        : Colors.black.withOpacity(0.1);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title for the process page:
            const Text(
              'Aktheuelt Prosess',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Or use theme color if desired
              ),
            ),
            const SizedBox(height: 16),
            // Custom horizontal process tabs:
            ProcessTabs(
              labels: steps.map((s) => s.label).toList(),
              activeTab: activeTab,
              onTabSelected: _onTabSelected,
            ),
            const SizedBox(height: 16),
            // Content container using the theme's card color.
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.cardTheme.color, // Use card color from the theme.
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: shadowColor,
                    blurRadius: 6,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: steps[activeTab].content,
            ),
          ],
        ),
      ),
    );
  }
}