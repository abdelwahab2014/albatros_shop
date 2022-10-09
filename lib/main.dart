import 'package:flutter/material.dart';

import './home_page.dart';
import 'favorites_page.dart';
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
    final currentWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: currentWidth < 600 ? Colors.blue : Colors.red),
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

// search bar widget
class SearchBar extends SearchDelegate<String> {
  final suggestion = ['Lamps', 'Iphone', 'SmartWatch', 'Something'];
  final recent = ['Product'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.arrow_menu,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null.toString());
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final sugg = query.isEmpty
        ? recent
        : suggestion.where((element) => element.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: ((context, index) => ListTile(
            onTap: (() {
              showResults(context);
            }),
            leading: const Icon(Icons.abc),
            title: Text(sugg[index]),
          )),
      itemCount: sugg.length,
    );
  }
}
