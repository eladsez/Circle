import 'package:flutter/material.dart';

class InputContainer extends StatelessWidget {
  const InputContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: size.width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 67, 1, 78).withAlpha(50)),
        child: child);
  }
}
