import 'package:findphone/Login%20setup/sign_up.dart';
import 'package:findphone/homepage.dart';
import 'package:findphone/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(10),
            //margin: EdgeInsets.all(20),
            alignment: Alignment.center,
//                margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 80.0),
//                decoration: BoxDecoration(
//                color: Colors.white,
//              ),
//                child:SingleChildScrollView(
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                        width: 400,
                        child: TextFormField(
                          // ignore: missing_return
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'Please type an email';
                            }
                          },
                          autovalidate: true,
                          onSaved: (input) => _email = input,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              border: OutlineInputBorder(),
                              labelText: 'Email'),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 70,
                        width: 400,
                        child: TextFormField(
                          // ignore: missing_return
                          validator: (input) {
                            if (input.length < 5) {
                              // ignore: missing_return, missing_return
                              return 'Your password length should be 5 Characters long';
                            }
                          },
                          onSaved: (input) => _password = input,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              border: OutlineInputBorder(),
                              labelText: 'Password'),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 50,
                        width: 400,
                        child: RaisedButton(
                          //padding: EdgeInsets.all(10),
                          textColor: Colors.black,
                          color: Colors.indigo[300],
                          child: Text('Login'),
                          onPressed: signIn,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Does not have account?',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              FlatButton(
                                textColor: Colors.indigo[900],
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(fontSize: 20),
                                ),
                                onPressed: signUp,
                              ),
                            ],
                          ),
                        ],
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
    );
  } //build

  void signIn() async {
    final formState = _formkey.currentState;
    if (formState.validate()) {
      formState.save();
      try {
        FirebaseUser user = (await FirebaseAuth.instance
                .signInWithEmailAndPassword(email: _email, password: _password))
            .user;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
      } catch (e) {
        print(e);
      }
    }
  }

  Future<void> signUp() async {
    try {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUp()));
    } catch (e) {
      print(e);
    }
  }
}
