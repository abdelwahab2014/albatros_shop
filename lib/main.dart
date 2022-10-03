import 'package:flutter/material.dart';
import './home_page.dart';
import './search_page.dart';
import './message_page.dart';
import './profile_page.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HOME(),
    ));

class HOME extends StatelessWidget {
  const HOME({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    Search(),
    Message(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALBATROS"),
        centerTitle: true,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "HOME"),
          NavigationDestination(icon: Icon(Icons.search), label: "Search"),
          NavigationDestination(icon: Icon(Icons.message), label: "Messages"),
          NavigationDestination(icon: Icon(Icons.person), label: "PROFILE"),
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
