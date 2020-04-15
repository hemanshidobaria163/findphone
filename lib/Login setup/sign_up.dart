import 'package:findphone/Login%20setup/SignIn.dart';
import 'package:findphone/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp>{
  String _email, _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'sans serif'
      ),
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
                leading: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/FP.png',
                      fit: BoxFit.contain,
                      height: 32,
                    ),
                  ],
                ),
                title: Center(child: Text("Registeration")),
                backgroundColor: Colors.cyan,
              ),
          body: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(10),
                    //margin: EdgeInsets.all(30),
                      alignment: Alignment.topCenter,
//                margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 80.0),
//                decoration: BoxDecoration(
//                color: Colors.white,
//              ),
//                child:SingleChildScrollView(
                  child: Center(
                    child: Form(
                      key: _formkey,
                      child: SingleChildScrollView(
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            TextFormField(
                              // ignore: missing_return
                              validator: (input) {
                                if (input.isEmpty){
                                  return 'Please type an email';
                                }
                              },
                              autovalidate: true ,
                              onSaved: (input) => _email = input,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(gapPadding: 5),
                                  labelText: 'Email'
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            TextFormField(
                              // ignore: missing_return
                              validator: (input) {
                                if (input.length < 5) {
                                  // ignore: missing_return, missing_return
                                  return 'Your password length should be 5 Characters long';
                                }
                              },
                              onSaved: (input) => _password = input,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password'
                              ),
                              obscureText: true,
                            ),
                              SizedBox(height: 10.0,),
                              FlatButton(
                                    textColor: Colors.blue,
                                       child: Text(
                                          'Sign Up',
                                    style: TextStyle(fontSize: 20),
                                       ),
                                    onPressed: register,
                              ),
                          ],
                        ),
                      ),
                      //                 ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }//build

  Future<void> register ()async  {
    final formState = _formkey.currentState;
    if(formState.validate()) {
      formState.save();
      try{
        FirebaseUser user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password)).user;
        user.sendEmailVerification();
        Navigator.of(context).pop();
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp.selectPage(1))) ;
      } catch (e) {
        print(e);
      }
    }
  }
}    //_SignUpState
