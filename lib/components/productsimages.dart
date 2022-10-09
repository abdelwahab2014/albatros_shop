import 'package:flutter/material.dart';

class ProductsImages extends StatelessWidget {
  const ProductsImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 110,
      child: Card(
        color:const Color.fromARGB(255, 93, 95, 93),
        child: Column(
          children: [
            Image.asset(
              'images/501.jpg',
              height: 90,
              width: 150,
              fit: BoxFit.fill,
            ),
            const Text("Product")
          ],
        ),
      ),
    );
  }
}
