import 'package:devnagri_sdk/devnagri_sdk.dart';
import 'package:example/l10n/generated/l10n.dart';
import 'package:example/screens/bottom_nav/vehicle_screen.dart';
import 'package:example/screens/papa_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../settings_screen.dart';
import 'animal_screen.dart';
import 'home_page.dart';
import 'number_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  List<Widget> _pages = [];

  @override
  void initState() {
    _pages = [
      const MyHomePage(),
      const AnimalsScreen(),
      const VehicleScreen(),
      const NumberScreen(),
    ];
    super.initState();
  }

  void _onItemTapped(int index) => setState(() {
        DevnagriNavigationObserver.instance.tabChanged();
        _selectedIndex = index;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Dev.of(context).multipurposeApp,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
        ),
        surfaceTintColor: Colors.transparent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                Dev.of(context).welcomeAboard,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),

            ListTile(
                title: Text(Dev.of(context).settings,
                    style: const TextStyle(fontSize: 20)),
                leading: const Icon(Icons.settings),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsScreen()));
                }),
            ListTile(
              title: Text(
                "Parent Screen".dev,
                style: const TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.handshake),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PapaScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: const TextStyle(fontSize: 18),
        selectedLabelStyle: const TextStyle(fontSize: 22),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home, color: Colors.blue),
            label: Dev.of(context).bear,
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.paw, color: Colors.green),
            label: Dev.of(context).animals,
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.car_detailed, color: Colors.red),
            label: Dev.of(context).vehicle,
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.number, color: Colors.orange),
            label: Dev.of(context).number,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        // Color for selected tab
        onTap: _onItemTapped,
      ),

      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.purpleAccent.withOpacity(0.6),
      //   tooltip: "Switch Between English & Hindi",
      //   onPressed: () {
      //     setState(() {
      //     final freshLocale = PreferenceStorage.getAppLocale().isEmpty ||
      //             PreferenceStorage.getAppLocale() == "hi"
      //         ? "en"
      //         : "hi";
      //
      //     MyApp.setLocale(context, Locale(freshLocale));
      //   });
      //   },
      //   child:
      //       const Icon(CupertinoIcons.wand_rays_inverse, color: Colors.black),
      // ),
    );
  }
}
