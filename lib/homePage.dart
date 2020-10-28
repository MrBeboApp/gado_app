import 'package:flutter/material.dart';
import 'package:gado_app/api/fetchData.dart';
import 'package:gado_app/constant.dart';
import 'package:gado_app/detealsPage.dart';
import 'package:gado_app/widgets/cardWidget.dart';
import 'package:gado_app/widgets/customDrawer.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FetchData fetchData = FetchData();

  @override
  void initState() {

    fetchData.fetchPosts();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Home Page Welcome",style: TextStyle(color: mainGrayColor),),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: mainBluColor
        )
      ),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:cardsList.length,
                  itemBuilder:(context,index){

                  print(index);

                  return cardsList[index];

              })
            ),
            Padding(
              padding: const EdgeInsets.only(top:18.0),
              child: Container(
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount:cardsSecondList.length,
                    itemBuilder:(context,index){

                    print(index);

                    return cardsSecondList[index];

                })
              ),
            ),



          ],
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}

