import 'package:flutter/material.dart';
import 'package:hackathon/front/components/input_container.dart';

class RoundedInput extends StatelessWidget {
  const RoundedInput({Key? key, required this.icon, required this.hint})
      : super(key: key);

  final IconData icon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
      cursorColor: Color.fromARGB(255, 67, 1, 78),
      decoration: InputDecoration(
          icon: Icon(icon, color: Color.fromARGB(255, 67, 1, 78)),
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}
