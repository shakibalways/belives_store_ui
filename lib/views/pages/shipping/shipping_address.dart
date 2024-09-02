import 'package:belives_store/components/my_custom_list_tile.dart';
import 'package:belives_store/global_wieght/custom_appbar.dart';
import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/global_wieght/custom_divider.dart';
import 'package:flutter/material.dart';

class ShippingAddressPage extends StatelessWidget {
  const ShippingAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customappBar(
          title: const Text(
        "SHIPPING",
        style: TextStyle(fontSize: 16),
      )),
      body: SingleChildScrollView(
        child: SizedBox(
            height: height * 1,
            width: double.infinity,
            child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: height * .65,
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
                                    SizedBox(
                                      height: 60,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "Enter Your Address",
                                            suffixIcon:
                                                const Icon(Icons.search),
                                            filled: true,
                                            hoverColor: const Color(0xfff2f2f2),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide.none)),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const CustomDivider(),
                                  ],
                                ),
                                const Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("My Address"),
                                        Icon(Icons.arrow_right_alt)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.location_on_outlined),
                                      title: Text(
                                        "Perth",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "139 Haystreet ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      trailing: Icon(
                                        Icons.check_circle_outline_rounded,
                                        size: 40,
                                        color: Color(0xff02C697),
                                      ),
                                    ),

                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomDivider(),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    // MyCustomListTile(),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomDivider(),
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
                      });
                },
                child: Image.asset(
                  "assets/map/location.png",
                  fit: BoxFit.cover,
                ))),
      ),
    );
  }
}
