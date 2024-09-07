import 'package:belives_store/global_wieght/custom_appbar.dart';
import 'package:belives_store/global_wieght/custom_divider.dart';
import 'package:flutter/material.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:customappBar(
        title: const Text(
          "PAYMENT METHOD",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.credit_card,
                          size: 35,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Credit Card",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      size: 35,
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 115,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xffF3F6F8),
                          borderRadius: BorderRadius.circular(30)),
                      child: const Icon(
                        Icons.add,
                        size: 35,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: height * .18,
                        width: width * .69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "**** 9000",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "01 / 22",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Travel Card",
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "&3,580.04",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                      "assets/pay_page_im/bank_icon.png")
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ),
                const SizedBox(height: 10),
                const CustomDivider(),
                ListTile(
                  leading: Image.asset("assets/pay_page_im/paypal.png"),
                  title: const Text(
                    "PayPal",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  subtitle: const Text(
                    "shakibmohammad18@gmail.com",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  trailing: const Icon(
                    Icons.check_circle_outline_rounded,
                    size: 40,
                    color: Color(0xff02C697),
                  ),
                ),
                const CustomDivider(),
                const SizedBox(height: 10),
                ListTile(
                  leading: Image.asset("assets/pay_page_im/apple.png"),
                  title: const Text(
                    "Apple Pay",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  subtitle: const Text(
                    "**** 9000",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  trailing: const Icon(
                    Icons.check_circle_outline_rounded,
                    size: 40,
                  ),
                ),
                const CustomDivider(),
              ],
            ),
            Container(
              height: height * .07,
              width: width,
              decoration: BoxDecoration(
                  color: const Color(0xffC6AB59),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(),
                    Text(
                      "ORDER REVIEW",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      size: 40,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
