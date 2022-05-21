import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/front/login_screen.dart';
import 'package:hackathon/front/register_page.dart';
import 'package:hackathon/front/main_screen.dart';
import 'package:camera/camera.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animated Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color.fromARGB(255, 67, 1, 78),
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)),
      home: LoginScreen(),
    );
  }
}
