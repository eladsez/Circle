import 'package:flutter/material.dart';
import 'package:hackathon/front/register_page.dart';
import 'package:hackathon/front/main_screen.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(30),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => mainScreen()),
          );
        },
        style:
            ElevatedButton.styleFrom(primary: Color.fromARGB(255, 65, 2, 77)),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
