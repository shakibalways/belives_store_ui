import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CatagoriesPage extends StatelessWidget {
  const CatagoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          centerTitle: true,
          title: Text(
            "SPEAKERS",
            style: TextStyle(fontSize: 17),
          ),
          actions: [
            Icon(
              Icons.import_export,
              size: 30,
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
                    borderRadius: BorderRadius.only(
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
                      Text(
                        "Beosound Balance",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        "Innovative, wireless home speaker",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              margin: EdgeInsets.all(5),
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
            SizedBox(height: 20,),

            TabBar(
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
