import 'package:flutter/material.dart';
import 'package:gado_app/constant.dart';
import 'package:gado_app/detealsPage.dart';

class CardWidget extends StatefulWidget {
  final String title;
  final Color color;
  final bool isHidden;
final MainAxisAlignment axixViw;

  CardWidget(this.title, this.color,this.isHidden,this.axixViw);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage(widget.title)));
      },
      child: Card(
        color: Colors.transparent,
        shadowColor: Colors.white,
        child: Container(
          color: Colors.transparent,

          child: Container(
            width: MediaQuery.of(context).size.width * 0.91,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(

              children: [

                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Column(
                    mainAxisAlignment: widget.axixViw,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color:Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child:Icon(Icons.whatshot_outlined,size: 40,color: Colors.white,),

                          ),
                          SizedBox(width: 30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.title,style: TextStyle(color: Colors.white.withOpacity(.6),fontSize: 20),),
                              Text("New Description",style: TextStyle(color: Colors.white,fontSize: 25),),
                            ],
                          )
                        ],
                      ),
                      widget.isHidden ? Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.white,

                          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:18.0),
                              child: Text("New Other Text"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:18.0),
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child:InkWell(
                                      onTap: (){
                                        print("Welcome Icons");
                                      },
                                      child: Icon(Icons.edit,color: Colors.white,))),
                            )
                          ],
                        ),
                      ):Container(color: Colors.red,),

                    ],
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
