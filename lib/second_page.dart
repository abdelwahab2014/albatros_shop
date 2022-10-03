import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("ALBATROS"),
        centerTitle: true,
        backgroundColor: switchValue ? Colors.red : Colors.blue,
        // go back arrow
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          tooltip: "Go Back",
        ),
      ),
      body: Switch(
        value: switchValue,
        onChanged: (bool newvalue) {
          setState(() {
            switchValue = newvalue;
          });
        },
      ),
    );
  }
}
