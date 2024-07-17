import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CustomCard extends StatelessWidget {
  final String image;

  final String text;
  final String texts;
  const CustomCard({
    super.key,
    required this.image,
    required this.text,
    required this.texts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 220,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            semanticContainer: false,
            color: Color(0xffF3F6F8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.fitHeight,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  texts,
                  style: TextStyle(
                      color: Colors.grey[500], fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
