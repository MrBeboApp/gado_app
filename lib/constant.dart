import 'package:flutter/material.dart';
import 'package:gado_app/widgets/cardWidget.dart';

final mainGrayColor = Color(0xff282728);
final mainBluColor = Color(0xff6ea0db);
final mainGreenColor = Color(0xff81b43a);
final mainWhiteGreenColor = Color(0xff5fccb2);
final mainBgColor = Color(0xfffefefe);


final List cardsList = [CardWidget("Titel One",mainBluColor,true,MainAxisAlignment.spaceBetween),CardWidget("Title Two",mainGreenColor,true,MainAxisAlignment.spaceBetween),CardWidget("Title Three",mainWhiteGreenColor,true,MainAxisAlignment.spaceBetween),];
final List cardsSecondList = [CardWidget("Titel One",mainGreenColor,false,MainAxisAlignment.center),CardWidget("Title Two",mainWhiteGreenColor,false,MainAxisAlignment.center),];


