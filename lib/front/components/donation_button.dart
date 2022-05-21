import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/front/donations_screen.dart';

class DonatingButton extends StatelessWidget {
  const DonatingButton({Key? key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => DonationScreen()),
            );
          },
          iconSize: 50,
          icon: Icon(Icons.wallet)),
    );
  }
}
