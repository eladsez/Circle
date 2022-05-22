import 'package:flutter/material.dart';

class UserTypePage extends StatefulWidget {
  const UserTypePage({Key? key}) : super(key: key);

  @override
  State<UserTypePage> createState() => _UserTypePageState();
}

class _UserTypePageState extends State<UserTypePage> {
  Color vulColor = Colors.grey;
  Color assColor = Colors.grey;
  Color donColor = Colors.grey;
  Color suppColor = Colors.grey;
  Text description = const Text('');


  void donChoice() {
    setState(() {
      donColor = Colors.deepOrangeAccent;
      vulColor = assColor = suppColor = Colors.grey;
      description = const Text('עזור לנו לשמור על איכות הסביבה ותעלה חיוך לאנשים נזקקים על הפנים על ידי תרומת האוכל שתכננתם לזרוק',
        textAlign: TextAlign.right,
        style: TextStyle(fontFamily: 'IBMPlex', fontSize: 25),);
    });
  }

  void assChoice() {
    setState(() {
      description = const Text('הצטרפו אלינו על מנת להגדיל את מעגל העזרה שלכם ולתת קצת מעבר למה שכבר נתתם',
      textAlign: TextAlign.right,
        style: TextStyle(fontFamily: 'IBMPlex', fontSize: 25),
      );
      assColor = Colors.amberAccent;
      vulColor = donColor = suppColor = Colors.grey;
    });
  }

  void vulChoice() {
    setState(() {
      description = const Text('עזור לנו להפיץ את הטוב לאנשים הנזקקים להם ובכך לדאוג לעוד חיוך היום',
        textAlign: TextAlign.right,
        style: TextStyle(fontFamily: 'IBMPlex', fontSize: 25),);
      vulColor = Colors.blue;
      donColor = assColor = suppColor = Colors.grey;
    });
  }

  void suppChoice() {
    setState(() {
      description = const Text('בעזרת מילוי פרטייך תוכל.י לעזור לנו לדאוג לכך שלא תצטרך.י לישון רעב.ה היום',
        textAlign: TextAlign.right,
        style: TextStyle(fontFamily: 'IBMPlex', fontSize: 25),);
      suppColor = Colors.teal;
      vulColor = assColor = donColor = Colors.grey;
    });
  }

  Widget getTitle() {
    return const Text(
      "!ספר לנו מי אתה",
      style: TextStyle(
          color: Colors.black54,
          fontSize: 45,
          fontFamily: 'SecularOne',
          letterSpacing: -1.5),
    );
  }

  Widget typeButton(String text, Color color, Function func) {
    return Container(
      // for an exact replicate, remove the padding.
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
      child: ElevatedButton(
        onPressed: () => func(),
        child: Text(
          text,
          style: const TextStyle(fontSize: 25, fontFamily: 'SecularOne'),
        ),
        style: ElevatedButton.styleFrom(
            primary: color,
            fixedSize: const Size(150, 70),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // margin: const EdgeInsets.only(top: 100),
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              getTitle(),
              const SizedBox(height: 50,),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Center(child: description),
              width: 300,),
              const SizedBox(height: 50,),
              Row(
                children: [
                  Expanded(child: typeButton("תורם", donColor, donChoice)),
                  Expanded(child: typeButton("עמותה", assColor, assChoice))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(child: typeButton("מתנדב", vulColor, vulChoice)),
                  Expanded(child: typeButton("נתמך", suppColor, suppChoice))
                ],
              ),
            ],
          )),
    );
  }
}
