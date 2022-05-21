import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon/front/components/cancel_button.dart';
import 'package:hackathon/front/components/donation_button.dart';
import 'package:hackathon/front/components/navigating_button.dart';
import 'package:hackathon/front/components/login_form.dart';
import 'package:hackathon/front/components/register_form.dart';
import 'package:hackathon/front/components/rounded_input.dart';
import 'dart:developer';
import 'package:hackathon/structure/user.dart';
import 'package:hackathon/structure/donor.dart';
import 'package:hackathon/front/components/user_button.dart';

class DonationScreen extends StatefulWidget {
  @override
  _DonationScreenState createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  //only for showing
  User defaultUser = User("Lior", "Breitman", "0501234567", "user@exemple.com");
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: width / 10,
              height: height / 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromARGB(255, 65, 2, 77)),
            )),
        Positioned(
            top: 170,
            right: 30,
            child: Container(
              width: width / 10,
              height: height / 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromARGB(255, 65, 2, 77)),
            )),
        Positioned(
            top: 370,
            left: -20,
            child: Container(
              width: width / 10,
              height: height / 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromARGB(255, 65, 2, 77)),
            )),
        Positioned(
            top: 500,
            right: 130,
            child: Container(
              width: width / 10,
              height: height / 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromARGB(255, 65, 2, 77)),
            )),
        Positioned(
            top: 100,
            right: width / 2,
            child: Text(
              "Donations Page",
              style: TextStyle(color: Colors.black, fontSize: 26),
            )),
        Positioned(
            top: height / 2,
            right: 350,
            child: RoundedInput(icon: Icons.food_bank, hint: "describe food"))
      ],
    ));
  }
}
