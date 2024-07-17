import 'package:belives_store/data%20model/order_list.dart';
import 'package:belives_store/global_wieght/custom_divider.dart';
import 'package:flutter/material.dart';

class OrderReview extends StatefulWidget {
  const OrderReview({super.key});

  @override
  State<OrderReview> createState() => _OrderReviewState();
}

class _OrderReviewState extends State<OrderReview> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_rounded),
        title: const Text(
          "ORDER REVIEW",
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.more_horiz)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
           Column(
             children: [
               const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Products",style: TextStyle(fontWeight: FontWeight.bold),),
                   Icon(Icons.arrow_drop_down_circle_outlined)
                 ],
               ),
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
               const CustomDivider(),
             ],
           ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             const Text("SHIPPING"),
             const SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 const Icon(Icons.pin_drop),
                 const Text(
                   "139 Haystreet,Perth",
                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                 ),
                 Container(
                   height: 30,
                   width: 80,
                   decoration: BoxDecoration(
                       color: const Color(0xffC6AB59),
                       borderRadius: BorderRadius.circular(8)),
                   child: const Center(
                     child: Text(
                       "Change",
                       style: TextStyle(fontWeight: FontWeight.bold),
                     ),
                   ),
                 )
               ],
             ),
             const SizedBox(
               height: 30,
             ),
             Container(
               height: height * .10,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   border: Border.all(color: Colors.grey.withOpacity(.60))),
               child: const Row(
                 children: [
                   Icon(
                     Icons.shopping_cart_rounded,
                     size: 40,
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         "Standard",
                         style: TextStyle(
                             fontWeight: FontWeight.bold, fontSize: 18),
                       ),
                       Text("2-3 days")
                     ],
                   ),
                 ],
               ),
             ),
           ],),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Text("PAYMENT",style: TextStyle(color: Colors.grey),),
               const SizedBox(height: 10,),
               Container(
                 height: height * .06,
                 decoration: BoxDecoration(
                     color: Colors.black, borderRadius: BorderRadius.circular(20)),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Image.asset("assets/pay_page_im/bank_icon.png"),
                     const Text(
                       "* * * *  9000",
                       style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 16),
                     ),
                     Container(
                       height: 30,
                       width: 80,
                       decoration: BoxDecoration(
                           color: const Color(0xffC6AB59),
                           borderRadius: BorderRadius.circular(8)),
                       child: const Center(
                         child: Text(
                           "Change",
                           style: TextStyle(fontWeight: FontWeight.bold),
                         ),
                       ),
                     )
                   ],
                 ),
               ),
               const SizedBox(height: 10,),
               const CustomDivider(),
             ],
           ),
         Column(
           children: [
             const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   "Shipping",
                   style: TextStyle(color: Colors.grey, fontSize: 18),
                 ),
                 Text(
                   "Free",
                   style: TextStyle(color: Colors.grey, fontSize: 18),
                 )
               ],
             ),
             const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   "Total:",
                   style: TextStyle(fontSize: 18),
                 ),
                 Text(
                   "\$ 9,800",
                   style: TextStyle(fontSize: 18),
                 )
               ],
             ),
             const SizedBox(height: 30,),
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
         )
          ],
        ),
      ),
    );
  }
}
