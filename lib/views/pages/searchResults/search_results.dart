import 'package:belives_store/global_wieght/conatiner_custom.dart';
import 'package:belives_store/global_wieght/custom_divider.dart';
import 'package:flutter/material.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> productItem = [
    {
      "image": "assets/home_image/beosound.png",
      "itemName": "Shakib",
      "itemPrice": "600"
    },
    {
      "image": "assets/home_image/biolit.png",
      "itemName": "RAJU",
      "itemPrice": "800"
    },
    {
      "image": "assets/home_image/headphone.png",
      "itemName": "siddik",
      "itemPrice": "200"
    },
    {
      "image": "assets/home_image/speakers.png",
      "itemName": "ROBIUL",
      "itemPrice": "300"
    },
    {
      "image": "assets/scan_page/box.png",
      "itemName": "FAHIM",
      "itemPrice": "700"
    },
    {
      "image": "assets/home_image/table.png",
      "itemName": "mamon vai",
      "itemPrice": "1000"
    },
    {
      "image": "assets/home_image/head.png",
      "itemName": "kushi",
      "itemPrice": "600"
    },
    {
      "image": "assets/home_image/biolit.png",
      "itemName": "sovan",
      "itemPrice": "620"
    },
    {
      "image": "assets/home_image/table.png",
      "itemName": "shadik",
      "itemPrice": "400"
    },
    {
      "image": "assets/home_image/speakers.png",
      "itemName": "faruk",
      "itemPrice": "400"
    },
    {
      "image": "assets/home_image/beosound.png",
      "itemName": "nahid",
      "itemPrice": "900"
    },
  ];
  List myList = [];
  void searchUser(String name) {
    myList = productItem
        .where((element) => element
            .toString()
            .toLowerCase()
            .contains(name.toString().toLowerCase()))
        .toList();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    myList = productItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                SizedBox(
                  width: 420,
                  child: TextField(
                    onChanged: searchUser,
                    controller: searchController,
                    decoration: InputDecoration(
                        filled: true,
                        hoverColor: const Color(0xfff2f2f2),
                        hintText: "Search",
                        suffixIcon: searchController.text.isNotEmpty
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    searchController.clear();
                                    myList = productItem;
                                  });
                                },
                                child: const Icon(Icons.close))
                            : const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                const CustomDivider(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "FOUND ${myList.length} RESULTS  ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey[500]),
                ),
                const SizedBox(
                  height: 60,
                ),
                myList.isNotEmpty
                    ? GridView.builder(
                        padding: const EdgeInsets.all(10),
                        shrinkWrap: true,
                        itemCount: myList.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.7,
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                        ),

                        itemBuilder: (context, index) {
                          return ContainerCustom(
                              image: myList[index]["image"],
                              itemName: myList[index]["itemName"],
                              itemPrice: myList[index]["itemPrice"]);
                        })
                    : const Text("Data Not Found"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
