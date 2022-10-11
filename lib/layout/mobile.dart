import 'package:flutter/material.dart';
//import '../components/productscat.dart';
//import '../components/productsimages.dart';
//import '../components/info.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    //var screen_width = MediaQuery.of(context).size.width;
    //var screenHight = MediaQuery.of(context).size.height;

    return const Text("data");
  }
}

/*itemBuilder: (context, index) {
        return Column(
          children: [
            Center(
              child: SizedBox(
                height: screenHight * 0.3,
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
            ),
          ],
        );
      },
      itemCount: 1,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 1,
        );
      }, */