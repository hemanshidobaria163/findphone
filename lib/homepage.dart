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
  List _processor = [
    "Apple A13 Bionic",
    "Snapdragon 865",
    "Exynos 990",
    "Snapdragon 855+",
    "MediaTek Dimensity 1000"
  ];
  List _ram = ["3GB", "4GB", "6GB", "8GB", "12GB"];
  List _storage = ["32 GB", "64 GB", "128 GB", "256 GB"];
  List _battery =["1821 mAh","2915 mAh "," 3,046 mAh ","3,110 mAh ","3,174 mAh","3800 mAh","4300 mAh","5000 mAh",];

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
  final Battery = {
    "1" :"1821 mAh",
    "2" :"2915 mAh",
    "3" :"3,046 mAh",
    "4" :"3,110 mAh",
    "5" :"3,174 mAh",
    "6" :"3800 mAh",
    "7" :"4300 mAh",
    "8" :"5000 mAh"
  };


  List<DropdownMenuItem<String>> _dropDownMenuItems2;
  String _selectedprocessor;

  List<DropdownMenuItem<String>> _dropDownMenuItems3;
  String _selectedram;

  List<DropdownMenuItem<String>> _dropDownMenuItems4;
  String _selectedstorage;
  List<DropdownMenuItem<String>> _dropDownMenuItems5;
  String _selectedbattery;
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
    _dropDownMenuItems5 = buildAndGetDropDownMenuItems(_battery);
    _selectedbattery = null;



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
    else if(_value == "Battery"){
      _dropDownMenuItems5 = [];
      populatebattery();
    }

    setState(() {
      value = _value;
      disabledropdown = false;
    });
  }

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

  void populatebattery(){
    for(String key in Battery.keys){
      _dropDownMenuItems5.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
              Processor[key]
          ),
        ),
        value: Processor[key],
      ));
    }
  }


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

  void changedDropDownItem5(String selectedBattery) {
    setState(() {
      _selectedbattery = selectedBattery;
      disabledropdown ? null : (_value) => secondselected(_value);
    });
  }

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

       child: Center(
          child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[

                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          color: Colors.black, style: BorderStyle.solid, width: 0.80),
                    ),
                    child: SizedBox(
                      child:DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: Text(
                                 "Select Processor",
                          style: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                          ),
                            textAlign: TextAlign.center,
                        ),
                        value: _selectedprocessor,
                        items: _dropDownMenuItems2,
                        elevation: 16,
                        onChanged: changedDropDownItem2,
                      ),
                    ),
                      height:50,
                      width: 350,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          color: Colors.black, style: BorderStyle.solid, width: 0.80),
                    ),
                    child: SizedBox(
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
                      height: 50,
                      width: 350,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid, width: 0.80),
                  ),
                    child: SizedBox(
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
                      height: 50,
                      width: 350,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          color: Colors.black, style: BorderStyle.solid, width: 0.80),
                    ),
                    child: SizedBox(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: Text(
                            "Select Battery", textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                color: Colors.black),
                          ),
                          value: _selectedbattery,
                          items: _dropDownMenuItems5,
                          elevation: 16,
                          onChanged: changedDropDownItem5,
                        ),
                      ),
                      height: 50,
                      width: 350,
                    ),
                  ),

                  SizedBox(
                    height: 50,
                    width: 350,
                    child: RaisedButton(
                      color: Colors.indigo[300],
                      onPressed: browse,
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
  Future<void> browse() async {
    try {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SearchItem()));
    } catch (e) {
      print(e);
    }
  }
}
