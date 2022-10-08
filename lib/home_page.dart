import 'package:flutter/material.dart';
import 'components/productscat.dart';
import 'components/productsimages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    const List productImages = [
      'images/500.jpg',
      'images/501.jpg',
      'images/500.jpg',
      'images/501.jpg',
      'images/500.jpg',
      'images/501.jpg'
    ];
    // ignore: non_constant_identifier_names
    final List ProductsNames = [
      'unit',
      'watch',
      'file',
      'unit',
      'file',
      'unit'
    ];

    return Scaffold(
        body: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(6)),
                      SizedBox(
                        height: 140,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: productImages.length,
                            separatorBuilder: ((context, index) =>
                                const SizedBox(
                                  width: 10,
                                  height: 3,
                                )),
                            itemBuilder: (context, index) {
                              return ProductsCat(
                                  productImages[index], ProductsNames[index]);
                            }),
                      ),
                      SizedBox(
                        height: 140,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: productImages.length,
                            separatorBuilder: ((context, index) =>
                                const SizedBox(
                                  width: 10,
                                  height: 3,
                                )),
                            itemBuilder: (context, index) {
                              return ProductsCat(
                                  productImages[index], ProductsNames[index]);
                            }),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 5,
                        endIndent: 8,
                        indent: 8,
                      ),
                      Center(
                        child: Column(
                          children: [
                            // const Padding(padding: EdgeInsets.only(left: 10)),
                            SizedBox(
                              height: 120,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  separatorBuilder: ((context, index) =>
                                      const SizedBox(
                                        width: 10,
                                      )),
                                  itemBuilder: (context, index) {
                                    return const ProductsImages();
                                  }),
                            ),
                            SizedBox(
                              height: 120,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  separatorBuilder: ((context, index) =>
                                      const SizedBox(
                                        width: 10,
                                      )),
                                  itemBuilder: (context, index) {
                                    return const ProductsImages();
                                  }),
                            ),
                            SizedBox(
                              height: 120,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  separatorBuilder: ((context, index) =>
                                      const SizedBox(
                                        width: 10,
                                      )),
                                  itemBuilder: (context, index) {
                                    return const ProductsImages();
                                  }),
                            ),
                            SizedBox(
                              height: 120,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  separatorBuilder: ((context, index) =>
                                      const SizedBox(
                                        width: 10,
                                      )),
                                  itemBuilder: (context, index) {
                                    return const ProductsImages();
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            separatorBuilder: ((context, index) => const SizedBox(
                  width: 10,
                )),
            itemCount: 1));
  }
}


/* Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                separatorBuilder: ((context, index) => const SizedBox(
                      width: 10,
                    )),
                itemBuilder: (context, index) {
                  return const ProductsCat();
                }),
          ),
          SizedBox(
            height: 120,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                separatorBuilder: ((context, index) => const SizedBox(
                      width: 10,
                    )),
                itemBuilder: (context, index) {
                  return const ProductsCat();
                }),
          ),
          const Divider(
            color: Colors.black,
            thickness: 5,
            endIndent: 8,
            indent: 8,
          ),
       
        ],
      ),*/