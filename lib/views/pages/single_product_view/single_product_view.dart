import 'package:belives_store/components/my_custom_container.dart';
import 'package:belives_store/global_wieght/custom_container.dart';

import 'package:flutter/material.dart';

class SingleProductViewPage extends StatefulWidget {
  const SingleProductViewPage({super.key});

  @override
  State<SingleProductViewPage> createState() => _SingleProductViewPageState();
}

class _SingleProductViewPageState extends State<SingleProductViewPage> {
  int selectedColorIndex = 0;

  List mycolors = <Color>[
    const Color(0xffC6AB59),
    const Color(0xffF8B6C3),
    const Color(0xff171717),
  ];
  // Color primaryColor

  void selectItem(int index) {
    setState(() {
      if (selectedColorIndex == index) {
        selectedColorIndex = 0; // Deselect the item if it is already selected
      } else {
        selectedColorIndex = index;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF3F6F8),
      appBar: AppBar(
        backgroundColor: const Color(0xffF3F6F8),
        leading: const Icon(
          Icons.arrow_back_rounded,
          size: 40,
        ),
        actions: const [
          Icon(
            Icons.shopping_bag,
            size: 40,
          ),
        ],
      ),
      //Info
      body: Padding(
        padding: const EdgeInsets.only(top: 63),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Speakers",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Beosound \nBalance",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "From",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "\$1,600",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Available Color",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      primary: false,
                      itemCount: mycolors.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectItem(index);
                            });
                          },
                          child: MyCustomContainer(
                            margin: const EdgeInsets.only(right: 5),
                            width: 40,
                            bRadius: BorderRadius.circular(10),
                            color: selectedColorIndex == index
                                ? mycolors[index]
                                : Colors.grey,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            //Description
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * .52,
                  width: width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: const Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Wireless, smart home speaker",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                                "A wireless speaker with a dynamic acoustic \nperformance designed to be positioned up \nagainst the wall on a shelf or side table in your \nhome. Impressive sound compared to its size."),
                          ],
                        ),
                        CustomContainer(
                          title: 'ADD TO CART',
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 200,
                  bottom: 350,
                  child: Image.asset(
                    "assets/home_image/Base.png",
                    height: 450,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
            //Descreption
          ],
        ),
      ),
      //Info
    );
  }
}
