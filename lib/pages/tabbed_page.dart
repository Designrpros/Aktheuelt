// lib/pages/tabbed_page.dart
import 'package:flutter/material.dart';
import 'aktheuelt_tab.dart';           // Your existing tab
import 'aktheuelt_prosess_tab.dart';   // Updated to load ProcessPage
import '../components/app_background.dart';

class TabbedPage extends StatelessWidget {
  const TabbedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                toolbarHeight: 0,
                bottom: const TabBar(
                  tabs: [
                    Tab(text: 'Aktheuelt'),
                    Tab(text: 'Aktheuelt Prosess'),
                  ],
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  unselectedLabelColor: Color.fromARGB(255, 165, 165, 165),
                ),
              ),
              body: const TabBarView(
                children: [
                  AktheueltTab(),
                  AktheueltProsessTab(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}