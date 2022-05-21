import 'package:flutter/material.dart';
import 'package:hackathon/front/register_page.dart';
import 'package:hackathon/front/self_screen.dart';

class UserButton extends StatelessWidget {
  const UserButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(30),
      child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserScreen()),
            );
          },
          iconSize: 50,
          icon: Icon(Icons.person)),
    );
  }
}
