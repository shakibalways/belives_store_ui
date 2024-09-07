import 'package:belives_store/components/my_custom_button.dart';
import 'package:belives_store/components/my_custom_text.dart';
import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/utilits/constant/text_list.dart';

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
                  MyCustomText(
                    title: "Speakers",
                    color: Colors.grey,
                    fSize: 15,
                  ),
                  SizedBox(height: 5),
                  MyCustomText(
                    title: "Beosound Balance",
                    fWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyCustomText(
                    title: "From",
                    color: Colors.grey,
                    fSize: 15,
                  ),
                  MyCustomText(
                    title: "\$1,600",
                    fSize: 15,
                    fWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyCustomText(
                    title: "Available color",
                    color: Colors.grey,
                    fSize: 15,
                  ),
                  const SizedBox(height: 20),
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
                          child: MyCustomButton(
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
            const SizedBox(height: 40),
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
                            MyCustomText(
                              title: "Wireless, smart home speaker",
                              fWeight: FontWeight.bold,
                              fSize: 22,
                            ),
                            SizedBox(height: 20),
                            MyCustomText(
                              title: RTexts.subTitles,
                              mLines: 4,
                              fSize: 15,
                            )
                          ],
                        ),
                        CustomContainer(title: 'ADD TO CART')
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
