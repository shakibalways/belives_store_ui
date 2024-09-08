import 'package:belives_store/utilits/constant/image_list.dart';
import 'package:flutter/material.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  RImages.backgroundImage,
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.close,
                      size: 32,
                    ),
                  ),
                  Image.asset(RImages.containerImage)
                ],
              ),
            ),
            Positioned(
                left: 50,
                bottom: 280,
                child: Image.asset(
                  RImages.scanImage,
                  height: 350,
                  fit: BoxFit.fitHeight,
                )),
            Positioned(
              top: 700,
              left: 25,
              child: Container(
                height: 150,
                width: 400,
                color: Colors.white,
                child: Row(

                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset(RImages.box)],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Speakers'),
                        Text('Beosound Balance',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("4.5 (1k Reviews)"),

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
