import 'package:flutter/material.dart';

import '../data model/productof_list.dart';
import 'custom_container.dart';
import 'custom_divider.dart';

class DetailsContainerCustom extends StatelessWidget {
  const DetailsContainerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * .53,
      width: width * .82,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Order #CS1020",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "•  In Progress",
                    style: TextStyle(color: Color(0xff9923FF)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomDivider(),
              SizedBox(
                height: 110,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: productList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xffF3F6F8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(productList[index].imagePath),
                        ),
                      );
                    }),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Beosound 1"),
                  Text("Beosound…"),
                  Text("Beoplay H…"),
                ],
              ),
              const CustomDivider(),
            ],
          ),
          Column(
            children: [
              const Text(
                "Your order is on its way!",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Orders will arrive in 3 days!",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: height * .53,
                          width: width,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: SingleChildScrollView(
                            physics: const PageScrollPhysics(),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 80),
                                  height: 110,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffC6AB59),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/alarm.png",
                                      height: 75,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  "Tracking Order",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                    "Enter up to 25 tracking numbers, one per line."),
                                const SizedBox(
                                  height: 8,
                                ),
                                const CustomDivider(),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: SizedBox(
                                    height: 60,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Enter Code",
                                          suffixIcon: const Icon(Icons.search),
                                          filled: true,
                                          hoverColor: const Color(0xfff2f2f2),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide.none)),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(20),
                                  child: CustomContainer(
                                    title: "Apply Filters (4)",
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  height: height * .05,
                  width: width * .46,
                  decoration: BoxDecoration(
                      color: const Color(0xffC6AB59),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "Track",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person_outline,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                      Text("Edit your information")
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.arrow_right_alt,
                size: 35,
              )
            ],
          ),
        ],
      ),
    );
  }
}
