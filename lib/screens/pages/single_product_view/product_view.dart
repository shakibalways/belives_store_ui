import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:flutter/material.dart';

class SingleProductView extends StatelessWidget {
  const SingleProductView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xffF3F6F8),
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_rounded,
            size: 40,
          ),
          actions: const [
            Icon(
              Icons.shopping_bag,
              size: 40,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 63),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 10
                ),
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
                padding: EdgeInsets.only(
                  left: 15
                ),
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
                padding: const EdgeInsets.only(
                  left: 10
                ),
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
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffC6AB59)),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffF8B6C3)),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff171717)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Stack(clipBehavior: Clip.none, children: [
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
                    ))
              ])
            ],
          ),
        ));
  }
}
