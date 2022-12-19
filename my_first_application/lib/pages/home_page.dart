import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Rohit App"),
      ),
        body:Center(
          child: Container(
            child: Text("Hello world $days"),
          ),
        ),
        drawer: Drawer(),
     );
  }
}