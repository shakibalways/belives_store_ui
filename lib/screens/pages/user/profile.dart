

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../data model/productof_list.dart';
import '../../../global_wieght/custom_container.dart';
import '../../../global_wieght/custom_divider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: GNav(
            gap: 8,
            padding: EdgeInsets.all(15),
            tabBackgroundColor: Color(0xffC6AB59),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.shopping_bag,
                text: 'Shooping',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'User',
              ),
            ]),
      ),
      body: Column(
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Container(
              height: height * 0.75,
              width: width,
              decoration: const BoxDecoration(
                  color: Color(0xffC6AB59),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 80),
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/home_image/icons.png",
                          height: 65,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "SHAKIB",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "shakibmohammad18@gmail.com",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  )
                ],
              ),
            ),
            Positioned(
              top: 330,
              left: 40,
              child: Container(
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
                                    child: Image.asset(
                                        productList[index].imagePath),
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
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(top: 80),
                                          height: 110,
                                          width: 110,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffC6AB59),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/images/alarm.png",
                                              height: 75,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 15,),
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
                                        const SizedBox(height: 8,),
                                        const CustomDivider(),
                                        Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: SizedBox(
                                            height: 60,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: "Enter Code",
                                                  suffixIcon:
                                                      const Icon(Icons.search),
                                                  filled: true,
                                                  hoverColor:
                                                      const Color(0xfff2f2f2),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      borderSide:
                                                          BorderSide.none)),
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
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
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
              ),
            )
          ])
        ],
      ),
    );
  }
}
