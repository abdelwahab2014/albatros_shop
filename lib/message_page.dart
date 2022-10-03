import 'package:flutter/material.dart';

const int itemCount = 20;

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: itemCount,
        itemBuilder: ((BuildContext context, int index) {
          return ListTile(
            title: SelectableText('Item ${(index + 1)}'),
            hoverColor: Colors.red,
            onTap: () {
              // debugPrint('${(index + 1)} Selected');
            },
            //leading: const Icon(Icons.plus_one),
          );
        }),
      ),
    );
  }
}
