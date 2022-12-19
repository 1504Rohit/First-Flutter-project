import 'dart:ui';

import 'package:flutter/material.dart';

class Login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(children: [
           SizedBox(height:70.0),
          
             Image.asset('assets/images/login page.jpg',fit: BoxFit.fitWidth,),
           
           SizedBox(height:30.0),
           Text("Welcome",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
           SizedBox(height: 10.0),
           
           Padding(
            padding:const EdgeInsets.symmetric(vertical: 16.0,horizontal: 50.0),
            child:Column(children: [
            TextFormField(
             decoration: InputDecoration(
               hintText:"Enter user name",
               labelText: "User name"

             ),
           ),
            TextFormField(
             obscureText: true,
             decoration: InputDecoration(
               hintText:"Enter password",
               labelText: "password"

             ),
           ),
            SizedBox(height: 30.0),
             
             ElevatedButton(onPressed: (() {
               
             }), child:Text("Login"))


           ],),
           )

        ],)
    );
  }
}
