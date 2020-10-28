import 'package:flutter/material.dart';
import 'package:gado_app/api/fetchData.dart';
import 'package:gado_app/api/postModel.dart';
import 'package:gado_app/constant.dart';
import 'package:gado_app/widgets/customDrawer.dart';

class AboutUSPage extends StatefulWidget {
  @override
  _AboutUSPageState createState() => _AboutUSPageState();
}

class _AboutUSPageState extends State<AboutUSPage> {
  bool isLoading = true;
  FetchData fetchData = FetchData();
  List <PostModel>postList = [];
  @override
  void initState() {
    super.initState();
    fetchData.fetchPosts().then((featureBuildposts){
      postList.addAll(featureBuildposts);
      setState(() {
        isLoading =false;
      });
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: mainBluColor,
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Container(
          height: 300,
          child: isLoading ? Center(child: CircularProgressIndicator()):ListView.builder(
            itemCount: postList.length,
              itemBuilder: (context,index){

              return _postCard(postList[index].image,postList[index].title,postList[index].shortDescription);

          }),
        )
      ),
    );
  }
  
  Widget _postCard(String image, String title,String shortDescription){
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network("http://192.168.1.12:1337" + image,width: 100,height: 100,fit:BoxFit.cover,),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text(shortDescription,style: TextStyle(fontSize: 10,),),
            ],
          )
        ],
      ),
    );
  }
}
