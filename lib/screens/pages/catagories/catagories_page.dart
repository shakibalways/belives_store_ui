
import 'dart:developer';

import 'package:flutter/material.dart';
import '../../../global_wieght/custom_divider.dart';

class CatagoriesPage extends StatefulWidget {
  const CatagoriesPage({super.key});

  @override
  State<CatagoriesPage> createState() => _CatagoriesPageState();
}

class _CatagoriesPageState extends State<CatagoriesPage> {
  double value = 20;
  int colorIndex =0;
  List<String> boxColor=[
    "0xffC6AB59",
    "0xff02C697",
    "0xffF8B6C3",
    "0xff3C79E6",
    "0xff171717",
    "0xff8F92A1",
    "0xff3C79E6",
    "0xffF8B6C3",
    "0xff02C697",
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          centerTitle: true,
          title: const Text(
            "SPEAKERS",
            style: TextStyle(fontSize: 17),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: height * .53,
                      width: width,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Gender",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                const SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffC6AB59),
                                          borderRadius: BorderRadius.circular(10)),
                                      child: const Center(
                                        child: Text(
                                          "Men",
                                          style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF3F6F8),
                                          borderRadius: BorderRadius.circular(10)),
                                      child: const Center(
                                        child: Text(
                                          "Women",
                                          style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF3F6F8),
                                          borderRadius: BorderRadius.circular(10)),
                                      child: const Center(
                                        child: Text(
                                          "Both",
                                          style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                const CustomDivider(),
                              ],
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Price Rate",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Slider(
                                  min: 0,
                                  max: 50,
                                  divisions: 20,
                                  label: value.round().toString(),
                                  value: value,
                                  onChanged: (value) {
                                    setState(() {
                                      value = value;
                                    });
                                  }),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 190,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xffF3F6F8)),
                                    child: const Center(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Min',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(
                                              Icons.minimize,
                                              size: 35,
                                            )
                                          ],
                                        )),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 190,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xffF3F6F8)),
                                    child: const Center(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Max',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(Icons.add)
                                          ],
                                        )),
                                  )
                                ],
                              ),
                              const SizedBox(height: 20,),
                              const CustomDivider(),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            const Text(
                              "Color",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              height: 80,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: boxColor.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: (){
                                          setState(() {
                                        colorIndex=colorIndex;
                                        log("yes");
                                          });
                                        },
                                        child: Container(

                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color:Color(int.parse(boxColor[index]))
                                          ),

                                        ),
                                      ),
                                    );
                                  }),
                            )
                          ],)
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Icon(
                Icons.import_export,
                size: 30,
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: 280,
                width: 365,
                decoration: BoxDecoration(
                    color: const Color(0xfff2f2f2),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(150),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(5, 9),
                        blurRadius: 5,
                        spreadRadius: 2,
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Beosound Balance",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        "Innovative, wireless home speaker",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              margin: const EdgeInsets.all(5),
                              height: 5,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 130,
                  left: 5,
                  child: Image.asset(
                    "assets/home_image/speakers.png",
                    height: 300,
                    fit: BoxFit.fitHeight,
                  )),
            ]),
            const SizedBox(
              height: 20,
            ),
            const TabBar(
                isScrollable: true,
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text('View all'),
                  ),
                  Tab(
                    child: Text('Portable'),
                  ),
                  Tab(
                    child: Text('Multiroom'),
                  ),
                  Tab(
                    child: Text('Architectural'),
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
