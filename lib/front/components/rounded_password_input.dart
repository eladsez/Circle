import 'package:flutter/material.dart';
import 'package:hackathon/front/components/input_container.dart';

class RoundedPasswordInput extends StatelessWidget {
  const RoundedPasswordInput({Key? key, required this.hint}) : super(key: key);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
      cursorColor: Color.fromARGB(255, 67, 1, 78),
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.lock, color: Color.fromARGB(255, 67, 1, 78)),
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}
