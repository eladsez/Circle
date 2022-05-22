import 'package:flutter/material.dart';
import 'package:hackathon/front/Supp_front/supp_home_page.dart';

class MainSupp extends StatefulWidget {
  const MainSupp({Key? key}) : super(key: key);

  @override
  State<MainSupp> createState() => _MainSuppState();
}


class _MainSuppState extends State<MainSupp> {


  int navigateIndex = 2;

  void _onItemTapped(int newIndex){
    setState(() {
      navigateIndex = newIndex;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SuppHomePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'חשבון',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.volunteer_activism),
              label: 'תמיכה'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'בית',
          ),
        ],
        currentIndex: navigateIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) => _onItemTapped(index),
      ),
    );
  }
}
