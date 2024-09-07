import 'package:belives_store/global_wieght/custom_appbar.dart';
import 'package:belives_store/global_wieght/custom_divider.dart';
import 'package:flutter/material.dart';

class OrderFailedPage extends StatelessWidget {
  const OrderFailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customappBar(
        title: const Text(
          "ORDER FAILED",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: const Color(0xffF8B6C3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/cancel.png",
                      height: 75,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Order Failed",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Your payment occurred an error.",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const CustomDivider(),
            Column(
              children: [
                Image.asset("assets/images/worry.png"),
                const Text(
                  "Do not worry 😉",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Text(
                  "Keep calm, sometimes it happens"
                  "\nPlease go back and check your payment method "
                  "\nor contact us",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
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
                    Icon(
                      Icons.arrow_back_rounded,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text(
                      "REVIEW PAYMENT METHOD ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(),
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
