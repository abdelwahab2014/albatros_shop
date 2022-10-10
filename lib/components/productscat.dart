import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductsCat extends StatelessWidget {
  ProductsCat(this.productsImages, this.productsNames, {super.key});
  String productsImages;
  String productsNames;
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.2,
      width: screenWidth * 0.2,
      child: Column(
        children: [
          OutlinedButton(
            onPressed: (() {}),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(3),
            ),
            child: CircleAvatar(
              radius: 50, // Image radius
              backgroundImage: AssetImage(productsImages),
            
            ),
          ),
          Text(productsNames),
        ],
      ),
    );
  }
}
