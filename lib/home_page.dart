import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          separatorBuilder: ((context, index) => const SizedBox(
                width: 12,
              )),
          itemBuilder: (context, index) => productCard(),
        ),
      ),
    );
  }
}

Widget productCard() => Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: const Text("Product"),
    );
