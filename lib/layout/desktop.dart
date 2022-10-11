import 'package:flutter/material.dart';
import '../components/productscategories.dart';
import '../components/productsimages.dart';
import '../components/info.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Expanded(
            child: Column(
              children: [
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(6)),
                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: productImages.length,
                          separatorBuilder: ((context, index) => const SizedBox(
                                width: 5,
                                height: 3,
                              )),
                          itemBuilder: (context, index) {
                            return ProductsCat(
                                productImages[index], productsNames[index]);
                          }),
                    ),
                    SizedBox(
                      height: 140,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: productImages.length,
                          separatorBuilder: ((context, index) => const SizedBox(
                                width: 5,
                                height: 3,
                              )),
                          itemBuilder: (context, index) {
                            return ProductsCat(
                                productImages[index], productsNames2[index]);
                          }),
                    ),
                    const Divider(
                      color: Colors.orange,
                      thickness: 0.5,
                      endIndent: 9,
                      indent: 9,
                    ),
                    Column(
                      children: [
                        const Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Most Viewed Items",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                            height: 120,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: 7,
                                separatorBuilder: ((context, index) =>
                                    const SizedBox(
                                      width: 10,
                                    )),
                                itemBuilder: (context, index) {
                                  return const ProductsImages();
                                }),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Most Searched Items",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                            height: 120,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: 7,
                                separatorBuilder: ((context, index) =>
                                    const SizedBox(
                                      width: 10,
                                    )),
                                itemBuilder: (context, index) {
                                  return const ProductsImages();
                                }),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Most Searched Items2",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                            height: 120,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: 7,
                                separatorBuilder: ((context, index) =>
                                    const SizedBox(
                                      width: 10,
                                    )),
                                itemBuilder: (context, index) {
                                  return const ProductsImages();
                                }),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: ((context, index) => const SizedBox(
              width: 10,
            )),
        itemCount: 1);
  }
}
