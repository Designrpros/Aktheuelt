// lib/components/home_img_grid.dart
import 'package:flutter/material.dart';

class HomeImgGrid extends StatelessWidget {
  HomeImgGrid({super.key});

  final List<Map<String, String>> steps = [
    {'label': 'Forstå Brukerne', 'image': 'Steg1.png', 'description': 'Forstå brukernes behov og ønsker.'},
    {'label': 'Co-Creation', 'image': 'Steg2.png', 'description': 'Samarbeid med brukerne for å utvikle løsninger.'},
    {'label': 'Prototyping', 'image': 'Steg3.png', 'description': 'Lag prototyper for testing og tilbakemelding.'},
    {'label': 'Testing', 'image': 'Steg4.png', 'description': 'Test løsninger med brukerne.'},
    {'label': 'Implementering', 'image': 'Steg5.png', 'description': 'Implementer løsningen i praksis.'},
    {'label': 'Iterativ Utvikling', 'image': 'Steg6.png', 'description': 'Iterer og forbedre løsningen kontinuerlig.'},
    {'label': 'Tverrfaglige Team', 'image': 'Steg7.png', 'description': 'Arbeid i tverrfaglige team.'},
    {'label': 'Leveranse & Tilbakemelding', 'image': 'Steg8.png', 'description': 'Lever løsningen og få tilbakemelding.'},
    {'label': 'Sprint Planlegging', 'image': 'Steg9.png', 'description': 'Planlegg i korte sprintsykluser.'},
    {'label': 'Kundefokus', 'image': 'Steg10.png', 'description': 'Fokus på kundens behov og tilbakemeldinger.'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(  // Wrap the entire content in a scroll view
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),  // Prevent scrolling within the GridView
        shrinkWrap: true,  // Ensures GridView only takes up as much space as needed
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 10, // Space between columns
          mainAxisSpacing: 10, // Space between rows
          childAspectRatio: MediaQuery.of(context).size.width > 600 ? 1.5 : 1, // Responsive aspect ratio (adjusts for larger screens)
        ),
        itemCount: steps.length, // Total number of steps
        itemBuilder: (context, index) {
          return Card(
            color: Colors.transparent,  // Make card background transparent to fit the background
            elevation: 4,  // Optional: add elevation to make the card stand out
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),  // Optional: rounded corners for the card
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Use Expanded to make images flexible and responsive to container size
                Expanded(
                  child: Image.asset(
                    'assets/images/${steps[index]['image']}',  // Dynamically load each image
                    fit: BoxFit.cover,  // Ensures the image fits within the grid item and maintains its aspect ratio
                    width: double.infinity,  // Ensure image width stretches to fill the container
                  ),
                ),
                const SizedBox(height: 8),  // Add space between image and text
                // Add padding around text content for better spacing
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0), // Horizontal padding for text
                  child: Column(
                    children: [
                      Text(
                        steps[index]['label']!,  // Step label (e.g., "Introduksjon")
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,  // White text color to contrast with the dark background
                        ),
                      ),
                      const SizedBox(height: 4),  // Add space between label and description
                      Text(
                        steps[index]['description']!,  // Description for the step
                        textAlign: TextAlign.center,  // Center align the description text
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,  // White text color for description
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}