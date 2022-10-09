import 'package:flutter/material.dart';
import 'package:flutterapp/layout/desktop.dart';
import './layout/mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 100) {
            return const Desktop();
          } else {
            return const Mobile();
          }
        }),
      ),
    );
  }
}
