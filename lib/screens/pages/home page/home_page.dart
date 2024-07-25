import 'package:belives_store/data%20model/productof_list.dart';
import 'package:belives_store/global_wieght/custom_card.dart';

import 'package:flutter/material.dart';
import '../../../global_wieght/custom_appbar.dart';
import '../../../utilits/constant/text_list.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: const Icon(
      //     Icons.menu_open_sharp,
      //     size: 32,
      //   ),
      // ),
      appBar: customappBar(
        leading: Icon(Icons.menu_open_sharp,size: 32,)
      ),
      body: Column(
        children: [
          const Text(
            RTexts.title1,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const PageScrollPhysics(),
                shrinkWrap: true,
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return CustomCard(
                      image: productList[index].imagePath,
                      text: productList[index].text,
                      texts: productList[index].texts);
                }),
          )
        ],
      ),
    );
  }
}
