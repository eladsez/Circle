import 'package:flutter/material.dart';

class VolunteerCard extends StatefulWidget {
  final String activity;
  final String donorName;
  final String date;

  const VolunteerCard(
      {Key? key,
      required this.donorName,
      required this.activity,
      required this.date})
      : super(key: key);

  @override
  State<VolunteerCard> createState() => _VolunteerCardState();
}

class _VolunteerCardState extends State<VolunteerCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
      child: Container(
        margin: EdgeInsets.only(top: 100),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.food_bank_outlined),
                title: Text(widget.activity + " עם " + widget.donorName),
                subtitle: Text("date:" + widget.date)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  child: const Text('Voulunteer'),
                  onPressed: () {
                    /* ... */
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
