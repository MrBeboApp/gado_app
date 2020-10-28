
import 'package:flutter/material.dart';
import 'package:gado_app/postsPage.dart';
import 'package:gado_app/homePage.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
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
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PostsPage()));
                },
                child: Row (children: [
                  Icon(Icons.book_rounded),
                  SizedBox(width: 5,),
                  Text("Posts")
                ],),
              ),
            ),
          ],
        ),
      ),

    );
  }
}