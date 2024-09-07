import 'package:flutter/material.dart';

class MyListTitle extends StatelessWidget {
  final String tText;
  const MyListTitle({
    super.key, required this.tText,
  });

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: const Icon(Icons.location_on_outlined),
      title: Text(
       tText,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      trailing: const Icon(
        Icons.add,
        size: 40,
        color: Color(0xff02C697),
      ),
    );
  }
}

//  MyCustomBottomSheets(height: height * .65, width: double.infinity, children: [
//                             Column(
//                               children: [
//                                 MyCustomSearchField(
//                                   hintName: "Enter Your Address",
//                                   controller: searchController,
//                                 ),
//                                 const SizedBox(height: 20),
//                                 const CustomDivider(),
//                               ],
//                             ),
//                             const Column(
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text("My Address"),
//                                     Icon(Icons.arrow_right_alt)
//                                   ],
//                                 ),
//                                 SizedBox(height: 10),
//                                 MyCustomListTile(
//                                   leadingIcon: Icons.location_on_outlined,
//                                   titleText: "Perth",
//                                   color: Colors.grey,
//                                   subtitleText: "139 Haystreet",
//                                   fWeight: FontWeight.bold,
//                                   fSize: 18,
//                                   trailingIcon:
//                                   Icons.check_circle_outline_rounded,
//                                   iFSize: 40,
//                                   iColor: Color(0xff02C697),
//                                 ),
//                                 CustomDivider(),
//                                 MyCustomListTile(
//                                   leadingIcon: Icons.location_on_outlined,
//                                   titleText: "Perth",
//                                   color: Colors.grey,
//                                   subtitleText: "Apple Perth City",
//                                   fWeight: FontWeight.bold,
//                                   fSize: 18,
//                                   trailingIcon: Icons.check_circle_outline,
//                                   iFSize: 40,
//                                 ),
//                                 CustomDivider(),
//                               ],
//                             ),
//                             const CustomContainer(
//                               title: "CONTINUE TO PAYMENT",
//                               icon: Icons.arrow_right_alt,
//                             ),
//                           ],
//
//                           child:Image.asset(
//                             "assets/map/location.png",
//                             fit: BoxFit.cover,
//                           ) ,),