import 'package:flutter/material.dart';
import 'package:the_gorgeous_login/view/components/coldCoffeePage.dart';
import 'package:the_gorgeous_login/view/components/hotCoffeePage.dart';
import 'package:the_gorgeous_login/view/components/ortherPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),

        body: SingleChildScrollView(

      child: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: height * 0.3,
                  width: width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/profile.png"),
                          fit: BoxFit.cover)),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(1.0),
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                  ),
                ),
                Positioned(
                  bottom: 90,
                  left: 20,
                  child: RichText(
                    text: TextSpan(
                        text: "it's Great",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 20),
                        children: [
                          TextSpan(
                              text: "Day With \nMwasalat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24))
                        ]),
                  ),
                )
              ],
            ),
            Transform.translate(
              offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
              child: Container(
                width: width,
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: <Widget>[
                        TabBar(
                          labelColor: Colors.black,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          unselectedLabelColor: Colors.grey[400],
                          unselectedLabelStyle: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          tabs: <Widget>[
                            Tab(
                              child: Text("Now"),
                            ),
                            Tab(
                              child: Text("Tomorrow"),
                            ),
                            Tab(
                              child: Text("after tomorrow"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 3),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Icon(
                                    Icons.search,
                                    size: 30,
                                  ),
                                ),
                                hintText: "Search for Bus",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        width: 1.0, color: Colors.grey[400]))),
                          ),
                        ),
                        Container(
                          height: height * 0.6,
                          child: TabBarView(
                            children: <Widget>[
                              HotCoffeePage(),
                              ColdCoffeePage(),
                              OrtherPage(),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
