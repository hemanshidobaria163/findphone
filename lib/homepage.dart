import 'package:findphone/Login%20setup/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:findphone/browse.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({Key key}) : super(key: key);
  @override
  _homepageState createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  bool disabledropdown = true;

 // List<DropdownMenuItem<String>> menuItems = List();
  String value = "";
  //List _company = ["Apple", "Google", "Onepluse", "Sumsang", "LG"];
  List _processor = [
    "Apple A13 Bionic",
    "Snapdragon 865",
    "Exynos 990",
    "Snapdragon 855+",
    "MediaTek Dimensity 1000"
  ];
  List _ram = ["3GB", "4GB", "6GB", "8GB", "12GB"];
  List _storage = ["32 GB", "64 GB", "128 GB", "256 GB"];
  /*List _os = ["Andoid", "iOS", "Windows"];
  List _primarycamara = ["8MP", "12MP", "16MP", "21MP", "48MP", "64MP"];

  final Company = {
    "1" : "Apple",
    "2" : "Google",
    "3" : "Onepluse",
    "4" : "Sumsang",
    "5" : "LG",
  };*/
  final Processor ={
    "1" : "Apple A13 Bionic",
    "2" : "Snapdragon 865",
    "3" : "Exynos 990",
    "4" : "Snapdragon 855+",
    "5" : "MediaTek Dimensity 1000",
  };
  final Ram = {
  "1" : "3GB",
  "2" : "4GB",
  "3" : "6GB",
  "4" : "8GB",
  "5" : "12GB",
};
  final Storage = {
    "1" : "32GB",
    "2" : "64GB",
    "3" : "128GB",
    "4" : "256GB",
  };
  /*final OS = {
    "1" : "Android",
    "2" : "iOS",
    "3" : "Windows",
  };
  final PrimaryCamara = {
    "1" : "8 MP",
    "2" : "12 MP",
    "3" : "16 MP",
    "3" : "21 MP",
    "3" : "48 MP",
    "3" : "64 MP",
  };
*/
//  List<DropdownMenuItem<String>> _dropDownMenuItems1;
//  String _selectedcompany;

  List<DropdownMenuItem<String>> _dropDownMenuItems2;
  String _selectedprocessor;

  List<DropdownMenuItem<String>> _dropDownMenuItems3;
  String _selectedram;

  List<DropdownMenuItem<String>> _dropDownMenuItems4;
  String _selectedstorage;

  /*List<DropdownMenuItem<String>> _dropDownMenuItems5;
  String _selectedos;

  List<DropdownMenuItem<String>> _dropDownMenuItems6;
  String _selectedprimarycamara;*/

  @override
  void initState() {
//    _dropDownMenuItems1 = buildAndGetDropDownMenuItems(_company);
//    _selectedcompany = null; //_dropDownMenuItems1[0].value;

    _dropDownMenuItems2 = buildAndGetDropDownMenuItems(_processor);
    _selectedprocessor = null; //_dropDownMenuItems2[0].value;

    _dropDownMenuItems3 = buildAndGetDropDownMenuItems(_ram);
    _selectedram = null; //_dropDownMenuItems3[0].value;

    _dropDownMenuItems4 = buildAndGetDropDownMenuItems(_storage);
    _selectedstorage = null; //_dropDownMenuItems3[0].value;

   /* _dropDownMenuItems5 = buildAndGetDropDownMenuItems(_os);
    _selectedos = null; //_dropDownMenuItems3[0].value;

    _dropDownMenuItems6 = buildAndGetDropDownMenuItems(_primarycamara);
    _selectedprimarycamara = null; //_dropDownMenuItems3[0].value;*/

    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = List();
    for (String fruit in fruits) {
      items.add(DropdownMenuItem(value: fruit, child: Text(fruit)));
    }
    return items;
  }

  void selected(_value){
    if(_value == "Processor"){
      _dropDownMenuItems2 = [];
      populateprocessor();
    }
    else if(_value == "Ram"){
      _dropDownMenuItems3 = [];
      populateram();
    }
    else if(_value == "Storage"){
      _dropDownMenuItems4 = [];
      populatestorage();
    }
    /*else if(_value == "OS"){
      _dropDownMenuItems5 = [];
      populateos();
    }
    else if(_value == "PrimaryCamara"){
      _dropDownMenuItems6 = [];
      populateprimarycamara();
    }*/
    setState(() {
      value = _value;
      disabledropdown = false;
    });
  }
  /*void populatecompany(){
    for(String key in Company.keys){
      _dropDownMenuItems1.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
              Company[key]
          ),
        ),
        value: Company[key],
      ));
    }
  }*/
  void populateprocessor(){
    for(String key in Processor.keys){
      _dropDownMenuItems2.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
              Processor[key]
          ),
        ),
        value: Processor[key],
      ));
    }
  }
  void populateram(){
    for(String key in Ram.keys){
      _dropDownMenuItems3.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
              Ram[key]
          ),
        ),
        value: Ram[key],
      ));
    }
  }
  void populatestorage(){
    for(String key in Storage.keys){
      _dropDownMenuItems4.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
              Storage[key]
          ),
        ),
        value: Storage[key],
      ));
    }
  }
  /*void populateos(){
    for(String key in OS.keys){
      _dropDownMenuItems5.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
              OS[key]
          ),
        ),
        value: OS[key],
      ));
    }
  }

  void populateprimarycamara(){
    for(String key in PrimaryCamara.keys){
      _dropDownMenuItems6.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
              PrimaryCamara[key]
          ),
        ),
        value: PrimaryCamara[key],
      ));
    }
  }*/

  /*void changedDropDownItem1(String selectedCompany) {
    setState(() {
      _selectedcompany = selectedCompany;
      // ignore: unnecessary_statements
      disabledropdown ? null : (_value) => secondselected(_value);

    });
  }
*/

  void changedDropDownItem2(String selectedProcessor) {
    setState(() {
      _selectedprocessor = selectedProcessor;
      disabledropdown ? null : (_value) => secondselected(_value);
    });
  }

  void changedDropDownItem3(String selectedRAM) {
    setState(() {
      _selectedram = selectedRAM;
      disabledropdown ? null : (_value) => secondselected(_value);
    });
  }

  void changedDropDownItem4(String selectedStorage) {
    setState(() {
      _selectedstorage = selectedStorage;
      disabledropdown ? null : (_value) => secondselected(_value);
    });
  }

  /*void changedDropDownItem5(String selectedOS) {
    setState(() {
      _selectedos = selectedOS;
      disabledropdown ? null : (_value) => secondselected(_value);
    });
  }

  void changedDropDownItem6(String selectedPrimaryCamara) {
    setState(() {
      _selectedprimarycamara = selectedPrimaryCamara;
      disabledropdown ? null : (_value) => secondselected(_value);
    });
  }*/
  void secondselected(_value){
    setState(() {
      value = _value;
    });
  }
  //int _selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.indigo[100],
      ),
       child: Center(
          child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  /*SizedBox(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text(
                          "Select Company",
                          style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              color: Colors.black),
                        ),
                        value: _selectedcompany,
                        items: _dropDownMenuItems1,
                        elevation: 16,
                        onChanged: changedDropDownItem1,
                      ),
                    ),
                    height: 30,
                    width: 300,
                  ),*/
                  SizedBox(
                    child:DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text(
                        "Select Processor",
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            color: Colors.black),
                      ),
                      value: _selectedprocessor,
                      items: _dropDownMenuItems2,
                      elevation: 16,
                      onChanged: changedDropDownItem2,
                    ),
                  ),
                    height:30,
                    width: 300,
                  ),
                  SizedBox(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text(
                          "Select RAM", textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              color: Colors.black),
                        ),
                        value: _selectedram,
                        items: _dropDownMenuItems3,
                        elevation: 16,
                        onChanged: changedDropDownItem3,
                      ),
                    ),
                    height: 30,
                    width: 300,
                  ),
                  SizedBox(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text(
                          "Select Internal Storage",
                          style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              color: Colors.black),
                        ),
                        value: _selectedstorage,
                        items: _dropDownMenuItems4,
                        elevation: 16,
                        onChanged: changedDropDownItem4,
                      ),
                    ),
                    height: 30,
                    width: 300,
                  ),
                 /* DropdownButton(
                    hint: Text(
                      "Select OS",
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          color: Colors.black),
                    ),
                    value: _selectedos,
                    items: _dropDownMenuItems5,
                    onChanged: changedDropDownItem5,
                  ),
                  DropdownButton(
                    hint: Text(
                      "Select Primary Camara",
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          color: Colors.black),
                    ),
                    value: _selectedprimarycamara,
                    items: _dropDownMenuItems6,
                    elevation: 16,
                    onChanged: changedDropDownItem6,
                  ),*/
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: RaisedButton(
                      color: Colors.indigo[300],
                      onPressed: () {
                        setState(() {
                          LoginPage();
                        });
                      },
                      child: Text(
                        "Browse",
                        style: TextStyle(fontSize: 20,color: Colors.black),
                      ),
                    ),
                  ),
                ],
          ),
       ),
    );

  }
}
