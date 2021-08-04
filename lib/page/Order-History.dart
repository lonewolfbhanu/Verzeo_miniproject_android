import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Order History'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
      );
}
