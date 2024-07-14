import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerCustom extends StatelessWidget {
  final String image;
  final String itemName;
  final String itemPrice;

  const ContainerCustom({super.key, required this.image, required this.itemName, required this.itemPrice});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 250,
      width: 170,
      decoration: BoxDecoration(
          color: const Color(0xfff2f2f2),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              offset: const Offset(5, 9),
              blurRadius: 5,
              spreadRadius: 2,
              color: Colors.grey.withOpacity(0.2),
            )
          ]),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 150,
            fit: BoxFit.fitHeight,
          ),
           Text(
            itemName,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18),
          ),
           Text(
            itemPrice,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

