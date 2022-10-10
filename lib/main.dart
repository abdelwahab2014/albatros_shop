import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import './home_page.dart';
import 'favorites_page.dart';
import './message_page.dart';
import './profile_page.dart';
import './components/searchbar.dart';

void main() => runApp( MaterialApp(
       builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(800, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
        ],
      ),
      debugShowCheckedModeBanner: false,
      home: const RootPage(),
    ));

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentIndex = 0;

  List<Widget> pages = const [
    HomePage(),
    Favorites(),
    Message(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchBar());
            },
            icon: const Icon(Icons.search),
          ),
        ],
        title: const Text("ALBATROS"),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.favorite), label: "Favorites"),
          NavigationDestination(icon: Icon(Icons.chat), label: "Chats"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
        onDestinationSelected: (value) {
          setState(
            () {
              currentIndex = value;
            },
          );
        },
        selectedIndex: currentIndex,
      ),
    );
  }
}
