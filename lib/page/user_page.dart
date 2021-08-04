import 'package:flutter/material.dart';
import 'package:navigation_drawer_example/widget/Address-page.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String urlImage;

  const UserPage({
    Key? key,
    required this.name,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg'),
              backgroundColor: Colors.transparent,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 20),
                    border: InputBorder.none,
                    hintText: "Your Name",
                    prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          Icons.person_outlined,
                          color: Colors.black,
                          size: 28,
                        )),
                  ),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    border: InputBorder.none,
                    hintText: "Email",
                    prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          Icons.mail_outline_outlined,
                          color: Colors.black,
                          size: 28,
                        )),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
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
                      TextButton(
                        style: TextButton.styleFrom(
                            minimumSize: Size(150.0, 50.0),
                            side: BorderSide(
                              width: 1,
                              color: Colors.black54,
                            )),
                        child: Text(
                          'Add Address',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Addresspage()));
                        },
                      ) //Resgister Button
                    ],
                  ),
                )
              ],
            )
          ]),
        ),
      ));
}
