import 'package:flutter/material.dart';

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'main.dart';
class First extends StatefulWidget {
  State<StatefulWidget> createState() {
    return Second();
  }
}

class Second extends State<First> {
  bool remember = false;
  bool _isLoggedIn = false;
  Map _userObj = {};
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFFE04747),
                      Color(0xFF398AE5),
                    ],
                  ),
                ),
              ),

              Container(
                  margin: EdgeInsets.only(top: 80.0),
                child:  TextButton(
                    onPressed: () {
                      FacebookAuth.instance.logOut().then((value) {
                        setState(() {
                          _isLoggedIn = false;
                          _userObj = {};
                        });
                      });

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text('Logout',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )



                )

              )


            ],
          )),
    );
  }
}
