import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  DetailPageState createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  final _imageIphoneXR = [
    "assets/images/PhoneData/Iphone 1.png",
    "assets/images/PhoneData/XR 1.jpg",
    "assets/images/PhoneData/XR 2.jpeg"
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
                            child: Image.asset(
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
