import 'package:flutter/material.dart';

class Addresspage extends StatelessWidget {
  const Addresspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Add Address"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 30),
                        border: UnderlineInputBorder(),
                        hintText: "Full Name"),
                    autofocus: true,
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 30),
                      border: UnderlineInputBorder(),
                      hintText: "House no/Building name*"),
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                ),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 30),
                      border: UnderlineInputBorder(),
                      hintText: "Locality"),
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                ),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 30),
                      border: UnderlineInputBorder(),
                      hintText: "City"),
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                ),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 30),
                      border: UnderlineInputBorder(),
                      hintText: "Pincode"),
                  autofocus: true,
                  textInputAction: TextInputAction.done,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red, // background
                          onPrimary: Colors.white,
                          minimumSize: Size(130, 50) // foreground
                          ),
                      onPressed: () {},
                      child: Text('Add Address'))
                ],
              )
            ]),
          ),
        ),
      );
}
