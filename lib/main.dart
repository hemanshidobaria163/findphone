import 'dart:io';
import 'package:findphone/Login%20setup/SignIn.dart';
import 'package:findphone/homepage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  int _selectedIndex = 0;
  MyApp.selectPage(this._selectedIndex);
  MyApp();

  @override
  State<StatefulWidget> createState() {
    return new TestState.selectIndex(_selectedIndex);
  }
}

class TestState extends State<MyApp> {
  int _selectedIndex = 0;
  TestState.selectIndex(this._selectedIndex);
  @override
  final List<Widget> pages = [
    homepage(
      key: PageStorageKey('Page1'),
    ),
    LoginPage(
      key: PageStorageKey('Page2'),
    ),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(

        onTap: (int index) => setState(() => _selectedIndex = index),
        currentIndex: selectedIndex,
        backgroundColor: Colors.indigo[200],
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color:Colors.black ,size: 30 ,),
              title: new Text('Home',style: TextStyle(color: Colors.black),),),
//          BottomNavigationBarItem(
//              icon: Icon(Icons.search), title: new Text("Search")),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black,size: 30,),
            title: new Text('Login',style: TextStyle(color: Colors.black),),
          ),
        ],
      );

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.indigo[600],
        fontFamily: 'Lato',
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        //backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/icon.png',
                fit: BoxFit.contain,
                height: 32,
              ),
            ],
          ),
          title: Center(
              child: Text(
            "Find Phone",
            style:
                TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.bold,),
          ),),
        ),
        bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
        body: PageStorage(
          child: pages[_selectedIndex],
          bucket: bucket,
        ),
      ),
    );
  }
}
