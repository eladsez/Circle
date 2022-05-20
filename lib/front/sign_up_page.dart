import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

main() => runApp(const MaterialApp(
      home: SignUpPage(),
    ));

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      onLogin: (LoginData) {},
      onRecoverPassword: (String) {},

    );
  }
}
