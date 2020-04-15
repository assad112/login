import 'package:flutter/material.dart';
import 'package:the_gorgeous_login/view/pages/homePage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'homepage.dart';
import 'info.dart';
import 'screens/search_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: Icon(Icons.menu),
          title: Text(
            "Dashboard",
            textAlign: TextAlign.center,
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              child: CustomPaint(
                painter: ShapesPainter(),
                child: Container(
                  height: size.height / 2,
                ),
              ),
            ),
            Container(

              margin: EdgeInsets.only(top: 170),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
//                    createGridItem(0),
//                    createGridItem(1),
                    createGridItem(0,'Booking'),
                    createGridItem(1,'Map'),
                    createGridItem(2,'Informaion'),
                    createGridItem(3,'text-test'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createGridItem(int position,var title) {
    var color = Colors.white;
    var icondata = Icons.add;

    switch (position) {

//      case 0:
//        color = Colors.cyan;
//        icondata = Icons.book;
//        break;
//      case 1:
//        color = Colors.deepPurple;
//
//        icondata = Icons.add_location;
//        break;
      case 0:
        color = Colors.orange[300];
        icondata = Icons.book;
        break;
      case 1:
        color = Colors.pinkAccent;
        icondata = Icons.add_location;
        break;
      case 2:
        color = Colors.teal[900];
        icondata = Icons.info;
        break;
      case 3:
        color = Colors.green[600];
        icondata = Icons.textsms;
        break;
    }

    return Builder(builder: (context) {
      return Padding(
        padding:
        const EdgeInsets.only(left: 10.0, right: 10, bottom: 5, top: 5),
        child: Card(
          elevation: 10,
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {
              //  Scaffold.of(context).showSnackBar(
              //   SnackBar(content: Text("Selected Item $position")));
              switch(position){
                case 0:
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                  //first page
                  break;
                case 1:
                  _launchURL() ;
//                  Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => HomePage()));
//                openMapsSheet(context);
                  //second page
                  break;
                case 2:
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()));
                  //second page
                  break;

                case 3:
                //  _launchURL() ;
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile1()));
                  //second page
                  break;
              };
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    icondata,
                    size: 40,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  _launchURL() async {
    const url = 'https://www.google.com.om/maps/place/%D9%83%D9%84%D9%8A%D8%A9+%D8%A7%D9%84%D8%B4%D8%B1%D9%82+%D8%A7%D9%84%D8%A3%D9%88%D8%B3%D8%B7%E2%80%AD/@23.5676922,58.1698204,17z/data=!3m1!4b1!4m5!3m4!1s0x3e8de2a1c1ede397:0x5d23dbf6d52a9f68!8m2!3d23.5676873!4d58.1676317';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the paint color to be white
    paint.color = Colors.white;
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = Colors.greenAccent[400];
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;


}



