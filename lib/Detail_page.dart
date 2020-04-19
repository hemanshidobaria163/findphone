import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  DetailPageState createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  final _imageIphoneXR = [
    "https://assets.teenvogue.com/photos/5b9967cdae6cd84bb0885c23/16:9/w_2560%2Cc_limit/iphones-no-tweet.jpg",
    "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-xr-red-select-201809?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1551226038669",
    "https://membershipwireless.com/media/catalog/product/a/p/apple-iphonexr-blue-2-3x_comp.jpg?width=700&height=700&canvas=700:700&quality=80&bg-color=255,255,255&fit=bounds",
    "https://cdn.tmobile.com/content/dam/t-mobile/en-p/cell-phones/apple/apple-iphone-xr/black/Apple-iPhoneXr-Black-1-3x.jpg",
    "https://cdn.tmobile.com/content/dam/t-mobile/en-p/cell-phones/apple/apple-iphone-xr/black/Apple-iPhoneXr-Black-2-3x.jpg",
    "https://cdn.tmobile.com/content/dam/t-mobile/en-p/cell-phones/apple/apple-iphone-xr/black/Apple-iPhoneXr-Black-3-3x.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            //color: Colors.blue,
            height: MediaQuery.of(context).size.height / 2,
            //width: MediaQuery.of(context).size.width / 2,
            padding: EdgeInsets.fromLTRB(10, 70, 10, 20),
            child: CarouselSlider(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height / 2,
                ),
                items: _imageIphoneXR
                    .map((item) => Container(
                          //color: Colors.yellow,
                         // padding: EdgeInsets.all(10),
                          alignment: Alignment.topCenter,
                          child: Center(
                            child: Image.network(
                              item,
                              fit: BoxFit.contain,
                              width: 1000,
                            ),
                          ),
                        ))
                    .toList()),
          ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 20 + MediaQuery.of(context).size.height / 2, 10, 20),
              child: Text(
                " ROM: 64 GB ROM \n Display: 15.49 cm (6.1 inch) Display\n Camara: 12MP Rear Camera | 7MP Front Camera \n Processor: A12 Bionic Chip Processor \n Storage:64\128\256 GB \n Battery: 2942mAh",
                style: TextStyle(fontSize: 20, color: Colors.black,wordSpacing: 2 ),
              )),
        ],
      )),
    );
  } //Scaffold
} //MaterialApp
