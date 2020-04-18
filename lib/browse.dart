import 'package:findphone/Detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:findphone/homepage.dart';

class SearchItem extends StatefulWidget {
  @override
  SearchItemState createState() => new SearchItemState();
}

class SearchItemState extends State<SearchItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[

            Card(
              elevation: 2,
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  FlatButton(
                    child: Image.asset(
                      'assets/images/PhoneData/Iphone 1.png',
                      width: 170,
                      height: 150,
                      //fit: BoxFit.contain,
                    ),
                    onPressed: Imagepressed,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Apple iphone XR (Red 64GB)",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 2,
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  FlatButton(
                    child: Image.asset(
                      'assets/images/PhoneData/Iphone 11.jpg',
                      width: 170,
                      height: 150,
                      //fit: BoxFit.contain,
                    ),
                    onPressed: Imagepressed,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Apple iphone 11 (Black 64GB)",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 2,
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  FlatButton(
                    child: Image.asset(
                      'assets/images/PhoneData/iphone 11 Pro.jpg',
                      width: 170,
                      height: 150,
                      //fit: BoxFit.contain,
                    ),
                    onPressed: Imagepressed,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Apple iphone 11 Pro (Midnight Green 64GB)",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 2,
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  FlatButton(
                    child: Image.asset(
                      'assets/images/PhoneData/iphone 11 pro_max.2jpg.jpg',
                      width: 170,
                      height: 150,
                      //fit: BoxFit.contain,
                    ),
                    onPressed: Imagepressed,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Apple iphone 11 Pro Max (White 64GB)",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 2,
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  FlatButton(
                    child: Image.asset(
                      'assets/images/PhoneData/Iphone SE 2 Gen.jpg',
                      width: 170,
                      height: 150,
                      //fit: BoxFit.contain,
                    ),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Apple iPhone SE (2nd generation )(Red 64GB)",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future<void> Imagepressed() async {
    try {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DetailPage()));
    } catch (e) {
      print(e);
    }
  }
}
