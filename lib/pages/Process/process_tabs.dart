// lib/pages/process/process_tabs.dart
import 'package:flutter/material.dart';

class ProcessTabs extends StatelessWidget {
  final List<String> labels;
  final int activeTab;
  final Function(int) onTabSelected;

  const ProcessTabs({
    Key? key,
    required this.labels,
    required this.activeTab,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      // Enable smooth scrolling on mobile:
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: List.generate(labels.length, (index) {
          final bool isActive = activeTab == index;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isActive
                    ? Theme.of(context).primaryColor
                    : Colors.grey[300],
                foregroundColor:
                    isActive ? Colors.white : Colors.black87,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: isActive ? 4 : 0,
              ),
              onPressed: () => onTabSelected(index),
              child: Text(
                labels[index],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}