import 'package:belives_store/global_wieght/custom_divider.dart';
import 'package:flutter/material.dart';

import '../../../data model/order_list.dart';

class OrderComplete extends StatelessWidget {
  const OrderComplete({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_rounded),
        title: const Text(
          "ORDER COMPLETE",
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.more_horiz)],
      ),
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
               SizedBox(height: 10,),
               Text(
                 "Payment Successful!",
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
               ),
               SizedBox(height: 10,),
               Text(
                 "Orders will arrive in 3 days!",
                 style: TextStyle(color: Colors.grey),
               ),
             ],
           ),
            SizedBox(height: 10,),
            CustomDivider(),
            SizedBox(height: 10,),
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
            SizedBox(height: 25,),
            Container(
              height: height * .07,
              width: width,
              decoration: BoxDecoration(
                  color: Color(0xffC6AB59),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
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
