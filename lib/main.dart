import 'package:flutter/material.dart';
import 'package:hackathon/front/menu_cards/food_card.dart';
import 'front/Supp_front/main_supp.dart';
import 'front/who_you_are_page.dart';

main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FoodCard(
      imagereq: 'לתת',
      donorName: 'לתת',
      description: 'very very very very very very long description on the food card',
    )));
// main() => runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MainSupp(),
//     ));
