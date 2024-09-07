import 'package:belives_store/data%20model/order_list.dart';
import 'package:belives_store/global_wieght/custom_appbar.dart';
import 'package:belives_store/global_wieght/custom_divider.dart';
import 'package:flutter/material.dart';

class PaymentSuccessfullyPage extends StatelessWidget {
  const PaymentSuccessfullyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customappBar(title: const Text(
        "ORDER COMPLETE",
        style: TextStyle(fontSize: 16),
      ),),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
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
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text(
                  "Payment Successful!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(height: 10,),
                const Text(
                  "Orders will arrive in 3 days!",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const CustomDivider(),
            const SizedBox(height: 10,),
            SizedBox(
              height: 170,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: placeOrder.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: 120,
                            decoration: BoxDecoration(
                              color: const Color(0xffF3F6F8),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(placeOrder[index].imagePath),
                          ),
                        ),
                        Text(placeOrder[index].text)
                      ],
                    );
                  }),
            ),
            const SizedBox(height: 25,),
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
                      "PLACE ORDER ",
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
