import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignUpPage extends StatelessWidget {
  static const routeName = 'Sign-up-page';

  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  SignUpPage({Key? key}) : super(key: key);

  Widget userInput(TextEditingController userInput, String hintTitle,
      TextInputType keyboardType, bool visibility) {
    return Container(
      height: 45,
      margin: const EdgeInsets.only(bottom: 10, left: 40, right: 40),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(7)),
      child: Container(
        padding: const EdgeInsets.only(top: 12, right: 10),
        child: TextField(
          textAlign: TextAlign.right,
          controller: userInput,
          autocorrect: false,
          enableSuggestions: false,
          autofocus: false,
          obscureText: visibility,
          decoration: InputDecoration.collapsed(
            hintText: hintTitle,
            hintStyle: const TextStyle(
                fontSize: 12, color: Colors.grey, fontStyle: FontStyle.italic),
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          // image: DecorationImage(
          //   alignment: Alignment.topCenter,
          //   image: AssetImage('assets/images/'),
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Container(
          height: 450,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFFFCCBC),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)),
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(children: [
              Row(
                children: [
                  Expanded(
                    child: userInput(firstNameController, 'שם פרטי',
                        TextInputType.name, false),
                  ),
                  Expanded(
                      child: userInput(lastNameController,
                          'שם משפחה', TextInputType.name, false)),
                ],
              ),
              userInput(phoneController, 'פלאפון',
                  TextInputType.number, false),
              userInput(emailController, 'מייל',
                  TextInputType.emailAddress, false),
              userInput(passwordController, 'סיסמא',
                  TextInputType.visiblePassword, true),
            ]),
            Container(
              // for an exact replicate, remove the padding.
              padding:
              const EdgeInsets.only(top: 5, left: 70, right: 70),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                color: Colors.white,
                onPressed: () {
                  String email = emailController.value.text;
                  String password = passwordController.value.text;
                  print("email:" + email);
                  print("password:" + password);
                },
                child: const Text(
                  'הירשם',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton(
                    Buttons.Google,
                    onPressed: () {},
                    text: 'Sign up with google',
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  //   SignInButton(
                  //     Buttons.Facebook,
                  //     onPressed: () {},
                  //     text: 'Sign up with facebook',
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(16)),
                  //   ),
                ],
              ),
            ),
          ],
          ),
      ),
      ],
    ),)
    ,
    );
  }
}
