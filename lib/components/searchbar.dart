import 'package:flutter/material.dart';
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