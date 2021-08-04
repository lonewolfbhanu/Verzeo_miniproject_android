import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer_example/page/Loginpage.dart';
import 'package:navigation_drawer_example/page/Signuppage.dart';

void main() => runApp(startpage());

class startpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _OutlinedButtonExample(),
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(primary: Colors.white),
        ),
      ),
    );
  }
}

class _OutlinedButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: StadiumBorder(),
                minimumSize: Size(230.0, 50.0),
                side: BorderSide(
                  width: 1,
                  color: Colors.black54,
                )),
            child: Text(
              'Login',
              style: TextStyle(fontSize: 23),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Loginpage()));
            },
          ),
          Container(
            height: 25,
            width: 100,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: StadiumBorder(),
                minimumSize: Size(230.0, 50.0),
                side: BorderSide(
                  width: 1,
                  color: Colors.black54,
                )),
            child: Text(
              'Register',
              style: TextStyle(fontSize: 23),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Signuppage()));
            },
          ),
        ],
      )),
    );
  }
}
