import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/front/menu_cards/food_card.dart';

class SuppHomePage extends StatefulWidget {
  const SuppHomePage({Key? key}) : super(key: key);

  @override
  State<SuppHomePage> createState() => _SuppHomePageState();
  List<FoodCard> cards= [];
}

class _SuppHomePageState extends State<SuppHomePage> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 400.0, scrollDirection: Axis.vertical, enableInfiniteScroll: true),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(color: Colors.amber),
                child: Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }
}
