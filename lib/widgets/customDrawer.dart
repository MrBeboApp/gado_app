
import 'package:flutter/material.dart';
import 'package:gado_app/aboutUSPage.dart';
import 'package:gado_app/homePage.dart';

class CustumDrawer extends StatelessWidget {
  const CustumDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Row (children: [
                Icon(Icons.home_filled),
                SizedBox(width: 5,),
                Text("Home")
              ],),
            ),InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUSPage()));
              },
              child: Row (children: [
                Icon(Icons.inbox_rounded),
                SizedBox(width: 5,),
                Text("About Us")
              ],),
            ),
          ],
        ),
      ),

    );
  }
}