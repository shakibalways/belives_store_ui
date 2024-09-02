import 'package:belives_store/components/my_custom_bottom_sheet.dart';
import 'package:belives_store/components/my_custom_container.dart';
import 'package:belives_store/components/my_custom_text.dart';
import 'package:belives_store/components/my_custom_textfield.dart';
import 'package:belives_store/data%20model/productof_list.dart';
import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/global_wieght/custom_divider.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final TextEditingController codeController = TextEditingController();
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                //BASE
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
                      MyCustomContainer(
                        margin: const EdgeInsets.only(top: 80),
                        height: height * 0.12,
                        width: width * 0.25,
                        color: Colors.black,
                        bRadius: BorderRadius.circular(30),
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
                      buildSizedBox(height: 20),
                      const MyCustomText(
                          title: "SHAKIB", fSize: 25, fWeight: FontWeight.bold),
                      const SizedBox(height: 10),
                      const MyCustomText(
                          title: 'shakibmohammad18@gmail.com',
                          fWeight: FontWeight.w500),
                    ],
                  ),
                ),
                //BASE
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
                            buildSizedBox(height: 10),
                            const CustomDivider(),
                            SizedBox(
                              height: height * 0.12,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: productList.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: MyCustomContainer(
                                      width: width * 0.22,
                                      color: const Color(0xffF3F6F8),
                                      bRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                          productList[index].imagePath),
                                    ),
                                  );
                                },
                              ),
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
                            const MyCustomText(
                              title: "Your order is on its way!",
                              fWeight: FontWeight.bold,
                            ),
                            const SizedBox(height: 10),
                            const MyCustomText(
                                title: "Orders will arrive in 3 days!",
                                fSize: 14,
                                fWeight: FontWeight.w300),
                            buildSizedBox(height: 30),
                            MyCustomBottomSheets(
                              height: height * .53,
                              width: double.infinity,
                              padding: const EdgeInsets.all(0),
                              physics: const ScrollPhysics(),
                              children: [
                                MyCustomContainer(
                                  margin: const EdgeInsets.only(top: 80),
                                  height: height * 0.13,
                                  width: width * 0.25,
                                  color: const Color(0xffC6AB59),
                                  bRadius: BorderRadius.circular(30),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/alarm.png",
                                      height: 75,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                const MyCustomText(
                                  title: "Tracking Order",
                                  fWeight: FontWeight.bold,
                                  fSize: 22,
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                    "Enter up to 25 tracking numbers, one per line."),
                                const SizedBox(height: 8),
                                const CustomDivider(),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: MyCustomSearchField(
                                    hintName: "Enter Code",
                                    controller: searchController,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Padding(
                                  padding: EdgeInsets.all(20),
                                  child:
                                      CustomContainer(title: "Apply Filter(4)"),
                                ),
                              ],
                              child: MyCustomContainer(
                                height: height * .05,
                                width: width * .46,
                                color: const Color(0xffC6AB59),
                                bRadius: BorderRadius.circular(10),
                                child: const Center(
                                  child: MyCustomText(
                                    title: "Track",
                                    color: Colors.white,
                                    fWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
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
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyCustomText(
                                      title: "My Account",
                                      fWeight: FontWeight.bold,
                                    ),
                                    Text("Edit your information")
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_right_alt, size: 35)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBox({double? height, double? width}) => SizedBox(
        height: height,
        width: width,
      );
}
