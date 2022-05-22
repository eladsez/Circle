import 'package:flutter/material.dart';
import 'front/Supp_front/main_supp.dart';
import 'front/who_you_are_page.dart';
import 'front/menu_cards/volunteering_card.dart';

main() => runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: VolunteerCard(
        activity: "משלוח מזון ", donorName: "לתת", date: "12.12.2001")));
