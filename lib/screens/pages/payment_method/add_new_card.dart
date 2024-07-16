import 'package:belives_store/global_wieght/custom_container.dart';
import 'package:flutter/material.dart';

import '../../../global_wieght/custom_field.dart';

class AddNewCard extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  AddNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_rounded),
        title: const Text(
          "ADD NEW CARD",
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        actions: [const Icon(Icons.camera_alt_outlined)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(

            children: [
              Container(
                height: height * .25,
                width: width ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xff0002FC),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/pay_page_im/card.png"),
                          Image.asset("assets/pay_page_im/bank_icon.png"),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "5988",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "6686",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "6686",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "9000",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Md Shakib",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "01 / 2022",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomField(
                  controller: userController,
                  hintText: 'Md Shakib',
                  prefixIcon: const Icon(Icons.person_outlined),
                  labelText: 'Card Holder'),
              const SizedBox(
                height: 30,
              ),
              CustomField(
                  controller: idController,
                  hintText: "5988 9942 6686 9000",
                  prefixIcon: const Icon(Icons.credit_card),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  labelText: 'Card Number'),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 185,
                    child: CustomField(
                        controller: dateController,
                        hintText: "01/2022",
                        prefixIcon: const Icon(Icons.date_range),
                        labelText: 'Expiry Date'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 185,
                    child: CustomField(
                        controller: cvvController,
                        hintText: "000",
                        prefixIcon: const Icon(Icons.lock),
                        labelText: 'Cvv'),
                  ),
                ],
              ),   const SizedBox(height: 30,),
              const Row(
                children: [
                  Icon(
                    Icons.check_box_outlined,
                    size: 40,
                  ),
                  Text(
                    "Save to My Cards",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
              const SizedBox(height: 100,),
              Container(
                height: height * .07,
                width: width,
                decoration: BoxDecoration(
                    color: const Color(0xffC6AB59),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(),
                      Text(
                        "ORDER REVIEW",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        size: 40,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
