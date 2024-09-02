import 'package:belives_store/components/my_custom_textfield.dart';
import 'package:belives_store/global_wieght/custom_appbar.dart';

import 'package:flutter/material.dart';

import '../../../global_wieght/custom_container.dart';
import '../../../global_wieght/custom_divider.dart';

class ShippingNewAddressPage extends StatelessWidget {
  const ShippingNewAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customappBar(
        title: const Text(
          "SHIPPING",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: height * 1,
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: height * .40,
                        width: width,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  MyCustomSearchField(
                                    tName: "139 Haystreet,Perth",
                                    controller: searchController,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const CustomDivider(),
                                ],
                              ),
                              const Column(
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.location_on_outlined),
                                    title: Text(
                                      "139 Haystreet ,Perth",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    trailing: Icon(
                                      Icons.add,
                                      size: 40,
                                      color: Color(0xff02C697),
                                    ),
                                  ),
                                ],
                              ),
                              const CustomContainer(
                                title: "CONTINUE TO PAYMENT",
                                icon: Icons.arrow_right_alt,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Image.asset(
                  "assets/map/location.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 150,
              top: 200,
              child: Image.asset("assets/map/Bullet.png"),
            ),
          ],
        ),
      ),
    );
  }
}
