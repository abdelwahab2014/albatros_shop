import 'package:flutter/material.dart';

class ProductsCat extends StatelessWidget {
  ProductsCat(this.productsImages, this.productsNames, {super.key});
  String productsImages;
  String productsNames;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: Column(
        children: [
          OutlinedButton(
            onPressed: (() {
              debugPrint("Button");
            }),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(3),
            ),
            child: CircleAvatar(
              radius: 50, // Image radius
              backgroundImage: AssetImage(productsImages),
              //child: Text("data"),
            ),
          ),
          Text(productsNames),
        ],
      ),
    );
  }
}

/*
Column(
          children: [
            
            Image.asset(
              'images/500.jpg',
              height: 80,
              width: 140,
              semanticLabel: "image",
              
            ),
            const Text("Product")
          ],
        ),
*/