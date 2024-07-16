


import 'package:belives_store/screens/pages/order_page/order_failed.dart';


import 'package:flutter/material.dart';

void main(){
  runApp(const BelivesStore());

}
class BelivesStore extends StatelessWidget {
  const BelivesStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderFailed(
      ),
    );
  }
}
