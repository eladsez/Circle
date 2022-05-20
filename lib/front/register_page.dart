import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon/front/components/cancel_button.dart';
import 'package:hackathon/front/components/navigating_button.dart';
import 'package:hackathon/front/components/login_form.dart';
import 'package:hackathon/front/components/register_form.dart';
import 'dart:developer';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with SingleTickerProviderStateMixin {
  bool isLogin = true;
  late Animation<double> containerSize;
  AnimationController? animationController;
  Duration animationDuration = Duration(milliseconds: 270);

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: animationDuration);
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double viewInset = MediaQuery.of(context)
        .viewInsets
        .bottom; // we are using this to determine Keyboard is opened or not
    double defaultRegisterSize = size.height - (size.height * 0.1);
    containerSize =
        Tween<double>(begin: size.height * 0.1, end: defaultRegisterSize)
            .animate(CurvedAnimation(
                parent: animationController!, curve: Curves.linear));
    log("started register page");
    return Scaffold(
      body: Stack(
        children: [
          RegisterForm(
              isLogin: isLogin,
              animationDuration: animationDuration,
              size: size,
              defaultLoginSize: defaultRegisterSize),
        ],
      ),
    );
  }
}
