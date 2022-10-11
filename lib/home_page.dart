import 'package:flutter/material.dart';
//import 'components/card.dart';
//import 'components/info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenw = MediaQuery.of(context).size.width;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Column(children: [
          ListView.separated(
              itemBuilder: (context, index) {
                return SizedBox(
                  width: screenw * 0.3,
                  child: Card(
                    color: Colors.amber,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.abc,
                        size: screenw * 0.2,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 2,
                );
              },
              itemCount: 4)
        ]);
      },
      itemCount: 1,
    );
  }
}
