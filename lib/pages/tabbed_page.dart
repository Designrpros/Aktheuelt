import 'package:flutter/material.dart';
import 'aktheuelt_tab.dart';  // Ensure this import is correct for AktheueltTab
import 'aktheuelt_prosess_tab.dart';  // Ensure this import is correct for AktheueltProsessTab
import '../components/app_background.dart';

class TabbedPage extends StatelessWidget {
  const TabbedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200), // Limit max width of the content only
          child: DefaultTabController(
            length: 2, // 2 tabs (Aktheuelt & Aktheuelt Prosess)
            child: Scaffold(
              backgroundColor: Colors.transparent,  // Make Scaffold transparent to reveal custom background
              appBar: AppBar(
                backgroundColor: Colors.transparent, // Make AppBar background transparent
                elevation: 0, // Remove shadow from AppBar
                toolbarHeight: 0, // Removes the extra space at the top of the app bar
                bottom: const TabBar(
                  tabs: [
                    Tab(text: 'Aktheuelt'),         // Correct tab name
                    Tab(text: 'Aktheuelt Prosess'), // Correct tab name
                  ],
                  labelColor: Colors.white, // Set tab text color to white
                  indicatorColor: Colors.white, // Set indicator (bottom line) color to white
                  unselectedLabelColor: Color.fromARGB(255, 165, 165, 165), // Non-active tab color gray
                ),
              ),
              body: const TabBarView(
                children: [
                  AktheueltTab(),          // Ensure AktheueltTab is defined and imported correctly
                  AktheueltProsessTab(),   // Ensure AktheueltProsessTab is defined and imported correctly
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}