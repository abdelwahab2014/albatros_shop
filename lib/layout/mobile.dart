import 'package:flutter/material.dart';
import '../components/productscat.dart';
import '../components/productsimages.dart';
import '../components/info.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    //var screen_width = MediaQuery.of(context).size.width;
    var screenHight = MediaQuery.of(context).size.height;

    return ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Expanded(
            child: Column(
              children: [
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      height: screenHight * 0.1,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: productImages.length,
                          separatorBuilder: ((context, index) => SizedBox(
                                width: 5,
                                height: screenHight * 0.1,
                              )),
                          itemBuilder: (context, index) {
                            return ProductsCat(
                                productImages[index], productsNames[index]);
                          }),
                    ),
                    // const Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      height: screenHight * 0.2,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: productImages.length,
                          separatorBuilder: ((context, index) => SizedBox(
                                width: 5,
                                height: screenHight * 0.1,
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
