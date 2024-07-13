import 'package:flutter/material.dart';

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
                    hoverColor: Color(0xffF3F6F8),
                    hintText: "Search On Belives-Store",
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Divider(
              height: 10,
              indent: 20,
              endIndent: 20,
              color: Colors.grey[300],
              thickness: 1,
            ),
            Text("RECENT SEARCHES",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.access_alarms_outlined),
                  title: Text("Beosound 1"),
                  trailing: Icon(Icons.close),
                ),
                Divider(
                  height: 30,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.grey[300],
                  thickness: 1,
                ),
                ListTile(
                  leading: Icon(Icons.access_alarms_outlined),
                  title: Text("Beosound Balance"),
                  trailing: Icon(Icons.close),
                ),
                Divider(
                  height: 30,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.grey[300],
                  thickness: 1,
                ),
                ListTile(
                  leading: Icon(Icons.access_alarms_outlined),
                  title: Text("Beolit 17"),
                  trailing: Icon(Icons.close),
                ),
                Divider(
                  height: 30,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.grey[300],
                  thickness: 1,
                ),
              ],
            ),
            Column(
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
                    Container(
                      height: 250,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Color(0xfff2f2f2),
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(5, 9),
                              blurRadius: 5,
                              spreadRadius: 2,
                              color: Colors.grey.withOpacity(0.2),
                            )
                          ]),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/home_image/beosound.png",
                            height: 150,
                            fit: BoxFit.fitHeight,
                          ),
                          Text(
                            "Beosound 1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "\$1,600",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Color(0xfff2f2f2),
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(5, 9),
                              blurRadius: 5,
                              spreadRadius: 2,
                              color: Colors.grey.withOpacity(0.2),
                            )
                          ]),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/home_image/biolit.png",
                            height: 150,
                            fit: BoxFit.fitHeight,
                          ),
                          Text(
                            "Beosound 1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "\$1,600",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
