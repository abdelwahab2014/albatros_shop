import 'package:flutter/material.dart';

class H extends StatefulWidget {
  const H({super.key});

  @override
  State<H> createState() => _HState();
}

class _HState extends State<H> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 4,
    children: const [
      Card(color: Colors.red,)
    ],
    );
  }
}
