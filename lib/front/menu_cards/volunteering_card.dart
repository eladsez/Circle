import 'package:flutter/material.dart';

class VolunteerCard extends StatefulWidget {
  final String? imageReq;
  final String donorName;
  final Color cardColor;
  final String activity;
  final DateTime date;

  const VolunteerCard(
      {Key? key,
      required this.activity,
      required this.date,
      this.cardColor = Colors.white,
      this.imageReq,
      required this.donorName})
      : super(key: key);

  @override
  State<VolunteerCard> createState() => _VolunteerCardState();
}

class _VolunteerCardState extends State<VolunteerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      height: 320,
      width: MediaQuery.of(context).size.width - 20,
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
                  'https://www.ynet.co.il/PicServer5/2020/04/11/9902972/990296601000100980650no.jpg'),
              Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Text(
                        widget.activity,
                        textAlign: TextAlign.right,
                      )),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(children: [
                      Text(
                        widget.donorName,
                        style: const TextStyle(fontSize: 20),
                        textAlign: TextAlign.right,
                      ),
                      Text(
                        widget.date.day.toString() +
                            '/' +
                            widget.date.month.toString() +
                            '/' +
                            widget.date.year.toString(),
                        style: const TextStyle(fontSize: 15),
                        textAlign: TextAlign.right,
                      ),
                    ]),
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
