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
                    child: Image.network(
                      'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-xr-red-select-201809?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1551226038669',
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
                    child: Image.network(
                      'https://cdn.tmobile.com/content/dam/t-mobile/en-p/cell-phones/apple/Apple-iPhone-11/Black/Apple-iPhone-11-Black-frontimage.jpg',
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
                    child: Image.network(
                      'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-11-pro-midnight-green-select-2019?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1566954990073',
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
                    child: Image.network(
                      'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-11-pro-max-gold-select-2019?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1566953859132',
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
                            "Apple iphone 11 Pro Max (Gold 64GB)",
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
                    child: Image.network(
                      'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6341/6341600_sd.jpg;maxHeight=640;maxWidth=550',
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
