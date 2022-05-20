import 'package:flutter/material.dart';
import 'package:hackathon/front/components/input_container.dart';
import 'package:hackathon/front/components/rounded_input.dart';
import 'package:hackathon/front/components/rounded_buton.dart';
import 'package:hackathon/front/components/navigating_button.dart';
import 'package:hackathon/front/components/rounded_password_input.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer';

class RegisterForm extends StatelessWidget {
  RegisterForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;
  String _selectedValue = "donator";

  @override
  Widget build(BuildContext context) {
    log("building register form");
    return AnimatedOpacity(
      opacity: isLogin ? 1.0 : 0.0,
      duration: animationDuration * 4,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: size.width,
          height: defaultLoginSize,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text(
                  'Welcome',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 40),
                SizedBox(height: 40),
                RoundedInput(icon: Icons.mail, hint: 'Email'),
                RoundedInput(icon: Icons.face_rounded, hint: 'First Name'),
                RoundedInput(icon: Icons.face_rounded, hint: 'Last Name'),
                RoundedInput(icon: Icons.phone, hint: 'Phone Number'),
                RoundedPasswordInput(hint: 'Password'),
                SizedBox(height: 10),
                DropdownButton(
                    items: getItems,
                    value: _selectedValue,
                    onChanged: (value) {
                      value = _selectedValue;
                    }),
                SizedBox(height: 10),
                RoundedButton(title: "Finish sign Up"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> get getItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Donator"), value: "donator"),
      DropdownMenuItem(child: Text("Association"), value: "Association"),
      DropdownMenuItem(child: Text("Other"), value: "Supported")
    ];
    return menuItems;
  }
}
