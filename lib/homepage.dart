import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Container(
        child:Stack(
          children: <Widget>[
          screen(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top:300.0),),
//              pp(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top:200.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Mwasalat Company", style: TextStyle(color: Colors.black,fontSize:23.0,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("For All", style: TextStyle(color: Colors.black,fontSize:23.0,fontWeight: FontWeight.bold),),
                ],
              ),
              Padding(padding: EdgeInsets.only(top:20.0),),
              Container(
                 color: Colors.blue[50],
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   
                  children: <Widget>[
                    Text("173", style: TextStyle(color: Colors.black,fontSize:23.0,fontWeight: FontWeight.bold),),
                    Text("24", style: TextStyle(color: Colors.black,fontSize:23.0,fontWeight: FontWeight.bold),),
                    Text("460", style: TextStyle(color: Colors.black,fontSize:23.0,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                 color: Colors.blue[50],
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   
                  children: <Widget>[
                    Text("Followers", style: TextStyle(color: Colors.black,fontSize:23.0,fontWeight: FontWeight.bold),),
                    Text("Posts", style: TextStyle(color: Colors.black,fontSize:23.0,fontWeight: FontWeight.bold),),
                    Text("Scores", style: TextStyle(color: Colors.black,fontSize:23.0,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top:20.0),),

              FittedBox(
                  child: Text("Hi, I am a Mwasalat company"
                      "\nThe fastest service you receive on Oman"
                      "\nTo contact and inquiree."
                      "\n-------------------------------------------------------------------\n "
                      "      +9682412155 or +96824121500     ",
                    style: TextStyle(fontSize: 22.0,color: Colors.black,fontStyle: FontStyle.italic),)
              ),

              Padding(padding: EdgeInsets.only(top:20.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ButtonTheme(
                    height: 45.0,
                    minWidth: 120.0,
                    buttonColor: Colors.green[300],
                    child: RaisedButton(
                      child: Text("FOLLOW",style: TextStyle(fontSize: 20.0,),),
                      onPressed: ()=>{},
                      //highlightColor: Colors.blue[100],
                    ),
                  ),
                  ButtonTheme(
                    height: 45.0,
                    minWidth: 100.0,
                    buttonColor: Colors.green[300],
                    child: RaisedButton(
                      child: Text("MESSAGE", style: TextStyle(fontSize: 20.0,),),
                      onPressed: ()=>{},
                     // highlightColor: Colors.blue[50],
                    ),
                  ),
                ],
              )
            ],
          ),

        ],
      ),
    )
  );
}
  Widget screen(){
    return Container(
      child: Image(
        image: AssetImage("assets/bus3.jpg"),
      ),
    );
  }
//  Widget pp(){
//    return Container(
////     child: CircleAvatar(
////      backgroundImage: ExactAssetImage("assets/5.JPG"),
////      minRadius: 50,
////      maxRadius: 80,
////      )
//    );
//  }
}