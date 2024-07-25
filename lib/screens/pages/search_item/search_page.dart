

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../global_wieght/conatiner_custom.dart';
import '../../../global_wieght/custom_divider.dart';
import '../../../utilits/constant/image_list.dart';
import '../../../utilits/constant/text_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 420,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    hoverColor: const Color(0xfff2f2f2),
                    hintText: "Search On Belives-Store",
                    suffixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            const CustomDivider(
              indent: 20,
              endIndent: 20,
            ),
            //Recent Searches
            const Text(
              "RECENT SEARCHES",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const Column(
              children: [
                ListTile(
                  leading: Icon(Icons.access_alarms_outlined),
                  title: Text("Beosound 1"),
                  trailing: Icon(Icons.close),
                ),
                CustomDivider(
                  indent: 20,
                  endIndent: 20,
                ),
                ListTile(
                  leading: Icon(Icons.access_alarms_outlined),
                  title: Text("Beosound Balance"),
                  trailing: Icon(Icons.close),
                ),
                CustomDivider(
                  indent: 20,
                  endIndent: 20,
                ),
                ListTile(
                  leading: Icon(Icons.access_alarms_outlined),
                  title: Text("Beolit 17"),
                  trailing: Icon(Icons.close),
                ),
                CustomDivider(
                  indent: 20,
                  endIndent: 20,
                ),
              ],
            ),
            //Recent Searches


            //Popular Searches
            const Column(
              children: [
                Text(
                  "POPULAR SEARCHES",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContainerCustom(
                        image: RImages.beosound,
                        itemName: RTexts.name,
                        itemPrice: RTexts.amount),
                    ContainerCustom(
                      image: RImages.biolit,
                      itemName: RTexts.name1,
                      itemPrice: RTexts.amount1,
                    )
                  ],
                )
              ],
            ),
            //Popular Searches

          ],
        ),
      ),
    );
  }
}
