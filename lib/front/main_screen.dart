import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon/front/components/cancel_button.dart';
import 'package:hackathon/front/components/donation_button.dart';
import 'package:hackathon/front/components/navigating_button.dart';
import 'package:hackathon/front/components/login_form.dart';
import 'package:hackathon/front/components/register_form.dart';
import 'dart:developer';
import 'package:camera/camera.dart';
import 'package:hackathon/front/components/user_button.dart';

class mainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: -100,
            right: 0,
            child: Container(
              width: width,
              height: height / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Color.fromARGB(255, 65, 2, 77)),
            )),
        Positioned(
            top: 100,
            right: width / 2,
            child: Text(
              "Welcome to Stav's Way! ",
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
        //Image.asset('assets/images/food.jpeg'),
        Positioned(
            top: height - 100,
            child: ButtonBar(
              children: [
                VerticalDivider(
                  color: Colors.white,
                  width: width / 5,
                  indent: 20,
                ),
                DonatingButton(),
                VerticalDivider(
                  color: Colors.white,
                  width: 2 * (width / 4),
                  indent: 20,
                ),
                UserButton()
              ],
            ))
      ],
    ));
  }
}
