import 'package:flutter/material.dart';
import 'package:the_gorgeous_login/models/place_model.dart';
import 'package:the_gorgeous_login/screens/place_screen.dart';
import 'package:the_gorgeous_login/view/pages/homePage.dart';

//class firstapp extends StatelessWidget {
//@override
//Widget build(BuildContext context) {
//  return MaterialApp(
//    title: 'assad',
//    home: Scaffold(
//      appBar: AppBar(
//        title: Text('test'),
//      ),
//    ),
//  );
//}
//}


class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _searchType = 0;

  Column _buildPopularPlaces() {
    List<Widget> popularPlaces = [];
    places.forEach((place) {
      popularPlaces.add(
        Container(

          height: 80.0,
          child: Center(
            child: ListTile(
              leading: Hero(
                tag: place.imageUrl,
                child: Image(image: AssetImage(place.imageUrl)),
              ),
              title: Text(
                place.city,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                '${place.properties} properties',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: InkResponse(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PlaceScreen(place: place),
                    ),
                  );
                },
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xFFFAF6F1),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 25.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
    return Column(children: popularPlaces);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                onPressed: () => print('Menu'),
                icon: Icon(Icons.menu),
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Text(
            'Book a seat on Mwasalat\nand From your home',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color: _searchType == 0
                        ? Colors.transparent
                        : Color(0xFFD2D1D6),
                  ),
                ),
                color: _searchType == 0 ? Color(0xFFFFC05F) : null,
                child: Text(
                  'Now',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _searchType = 0;
                  });
                },
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color: _searchType == 1
                        ? Colors.transparent
                        : Color(0xFFD2D1D6),
                  ),
                ),
                color: _searchType == 1 ? Color(0xFFFFC05F) : null,
                child: Text(
                  'another',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _searchType = 1;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 30.0),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Where',
              icon: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFFEEF8FF),
                ),
                child: Icon(
                  Icons.location_on,
                  size: 25.0,
                  color: Color(
                    0xFF309DF1,
                  ),
                ),
              ),
            ),
          ),
          Divider(height: 40.0),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Check-in ',
              icon: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFFEEF8FF),
                ),
                child: Icon(
                  Icons.calendar_today,
                  size: 25.0,
                  color: Color(
                    0xFF309DF1,
                  ),
                ),
              ),
            ),
          ),
          Divider(height: 40.0),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Number of seats',
              icon: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFFEEF8FF),
                ),
                child: Icon(
                  Icons.person,
                  size: 25.0,
                  color: Color(
                    0xFF309DF1,
                  ),
                ),
              ),
            ),
          ),
          Divider(height: 40.0),
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Color(0xFF309DF1),
            child: Text(
              'Search',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }
          ),
          SizedBox(height: 30.0),
          Text(
            'Available now',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          _buildPopularPlaces(),
        ],
      ),
    );
  }
}
