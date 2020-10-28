import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String title;

  DetailsPage(this.title);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
