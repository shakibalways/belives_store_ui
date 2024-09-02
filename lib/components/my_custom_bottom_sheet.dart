import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/global_wieght/custom_divider.dart';
import 'package:flutter/material.dart';

import 'my_custom_textfield.dart';

class MyCustomBottomSheet extends StatelessWidget {
  final double height;
  final double width;
  final MainAxisAlignment ? mAxisAli;
  final List<Widget> children;

  const MyCustomBottomSheet({
    super.key,
    required this.height,
    required this.width,
    this.mAxisAli,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: height,
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
                  mainAxisAlignment:mAxisAli ?? MainAxisAlignment.start,
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
                    ),
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
    );
  }
}
