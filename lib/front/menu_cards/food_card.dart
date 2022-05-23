import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  String? imagereq;
  String donorName;
  String description;
  Color cardColor;
  TextStyle descriptionStyle = TextStyle(fontSize: 25, fontFamily: 'IBMPlex');

  FoodCard(
      {Key? key,
      required this.donorName,
      this.imagereq,
      this.cardColor = Colors.white,
      required this.description})
      : super(key: key);

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        height: 320,
        width: MediaQuery.of(context).size.width - 5,
        child: Card(
          color: widget.cardColor,
          child: InkWell(
            splashColor: Colors.grey.withAlpha(75),
            onTap: () {
              debugPrint('Card tapped.');
            },
            child: Column(
              children: [
                Image.network(
                    'https://www.refrigeratedfrozenfood.com/ext/resources/NEW_RD_Website/DefaultImages/default-pasta.jpg'),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                        child: Text(
                          widget.description,
                          textAlign: TextAlign.right,
                        )),
                    Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Text(
                      widget.donorName,
                      style: const TextStyle(fontSize: 25),
                      textAlign: TextAlign.right,
                    ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
