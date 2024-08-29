import 'package:belives_store/components/my_custom_container.dart';
import 'package:belives_store/components/my_custom_text.dart';
import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:belives_store/global_wieght/custom_divider.dart';
import 'package:flutter/material.dart';

class MyCustomBottomSheet extends StatelessWidget {
  final TextEditingController controller;
  final String bName;
  const MyCustomBottomSheet({
    super.key,
    required this.controller,
    required this.bName,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * .53,
      width: width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: SingleChildScrollView(
        physics: const PageScrollPhysics(),
        child: Column(
          children: [
            MyCustomContainer(
              margin: const EdgeInsets.only(top: 80),
              height: height * 0.13,
              width: width * 0.25,
              color: const Color(0xffC6AB59),
              bRadius: BorderRadius.circular(30),
              child: Center(
                child: Image.asset(
                  "assets/images/alarm.png",
                  height: 75,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const MyCustomText(
              title: "Tracking Order",
              fWeight: FontWeight.bold,
              fSize: 22,
            ),
            const SizedBox(height: 8),
            const Text("Enter up to 25 tracking numbers, one per line."),
            const SizedBox(height: 8),
            const CustomDivider(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 60,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: "Enter Code",
                    suffixIcon: const Icon(Icons.search),
                    filled: true,
                    hoverColor: const Color(0xfff2f2f2),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CustomContainer(title: bName),
            )
          ],
        ),
      ),
    );
  }
}
