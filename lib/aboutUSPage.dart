import 'package:flutter/material.dart';
import 'package:gado_app/constant.dart';
import 'package:gado_app/widgets/customDrawer.dart';

class AboutUSPage extends StatefulWidget {
  @override
  _AboutUSPageState createState() => _AboutUSPageState();
}

class _AboutUSPageState extends State<AboutUSPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBluColor,

      appBar: AppBar(),
      drawer: CustomDrawer(),
    );
  }
}
