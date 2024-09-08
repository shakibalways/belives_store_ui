import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/global_wieght/custom_divider.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_rounded),
        title: const Text(
          "MY CART",
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.more_horiz)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: height * .20,
              width: width,
              decoration: BoxDecoration(
                  color: const Color(0xffF3F6F8),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/home_image/beosound.png",
                    height: 150,
                    fit: BoxFit.fitHeight,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Beosound 1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Row(
                        children: [
                          const Text("Color"),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("Size"),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                              child: Text(
                                "L",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text("\$1,600"),
                      Row(
                        children: [
                          const Text(
                            "-",
                            style: TextStyle(fontSize: 35),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                              child: Text(
                                "4",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.add)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: height * .12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.withOpacity(.60))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_cart_rounded,
                              size: 40,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Standard",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text("2-3 days"),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.arrow_downward_sharp,
                        size: 45,
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: height * .12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.withOpacity(.60))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.percent,
                        size: 40,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Promo Code",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text("-\$100.00")
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 80,
                        decoration: BoxDecoration(
                            color: const Color(0xffC6AB59),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "ST#132",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.check,
                        color: Color(0xff02C697),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                CustomDivider(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "\$ 9,800",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                CustomContainer(
                  title: "CHECKOUT",
                  icon: Icons.arrow_right_alt,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
