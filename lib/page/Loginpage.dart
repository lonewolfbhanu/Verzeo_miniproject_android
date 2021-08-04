import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer_example/main.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _Loginassets(),
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(primary: Colors.white),
        ),
      ),
      title: "Signup",
    );
  }
}

const TextStyle kHeading = TextStyle(
  fontSize: 60,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

class _Loginassets extends StatelessWidget {
  const _Loginassets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(children: [
            Container(
                height: 80,
                child: Center(
                  child: Text(
                    "Login",
                    style: kHeading,
                  ),
                )),
            SizedBox(
              height: 100,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 20),
                            border: InputBorder.none,
                            hintText: "Email",
                            prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Icon(
                                  Icons.mail_outline_outlined,
                                  color: Colors.white,
                                  size: 28,
                                )),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ),
                  )
                ])),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red[300],
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 20),
                        border: InputBorder.none,
                        hintText: "Password",
                        prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(
                              Icons.lock_rounded,
                              color: Colors.white,
                              size: 28,
                            )),
                      ),
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 25,
              width: 100,
            ),
            Column(
              children: [
                Container(
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
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainPage()));
                        },
                      ) //Resgister Button
                    ],
                  ),
                )
              ],
            )
          ])),
        ),
      )
    ]);
  }
}
