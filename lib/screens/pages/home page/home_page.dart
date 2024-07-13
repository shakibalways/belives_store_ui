// import 'package:belives_store/global_wieght/custom_card.dart';
// import 'package:belives_store/utilits/constant/image_list.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// import '../../../utilits/constant/text_list.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(
//           Icons.menu_open_sharp,
//           size: 32,
//         ),
//       ),
//       body: Column(
//
//         children: [
//           Text(
//             RTexts.title1,
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//           ),
//        SizedBox(height: 200,),
//       SizedBox(
//       height: 200,
//         child: Expanded(
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             physics: PageScrollPhysics(),
//             shrinkWrap: true,
//               itemCount: 3,
//               itemBuilder: (context,index){
//             return CustomCard(image: RImages.speakers, text: RTexts.speaker, texts: RTexts.avail);
//           }),
//         ),
//       )
//
//
//         ],
//       ),
//     );
//   }
// }
