import 'package:flutter/material.dart';

import '../../../data model/productof_list.dart';
import '../../../global_wieght/custom_container.dart';
import '../../../global_wieght/custom_divider.dart';
import '../../../global_wieght/order_site_container_all.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(clipBehavior: Clip.none, children: [
            //BASE
            Container(
              height: height * 0.75,
              width: width,
              decoration: const BoxDecoration(
                  color: Color(0xffC6AB59),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 80),
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/home_image/icons.png",
                          height: 65,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "SHAKIB",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "shakibmohammad18@gmail.com",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  )
                ],
              ),
            ),
            //BASE

            Positioned(
              top: 330,
              left: 40,
              child:
              //GOLOBAL WIEGHT
              // ORDER SITE CONTAINER ALL
              DetailsContainerCustom(),
              //GOLOBAL WIEGHT
            )
          ])
        ],
      ),
    );
  }
}
