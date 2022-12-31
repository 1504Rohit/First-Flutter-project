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
            height: 600,
            width: 500,
            child:SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:Column(
                children: [
                  Container(child: Text("row1"),color:Colors.blueGrey,height: 100,width: 100,),
                  Container(child: Text("row2"),color:Colors.blue,height: 100,width: 100,),
                  Container(child: Text("row3"),color:Colors.red,height: 100,width: 100,),
                  Container(child: Text("row4"),color:Colors.orange,height: 100,width: 100,),
                  Container(child: Text("row5"),color:Colors.green,height: 100,width: 100,),
                   Container(child: Text("row1"),color:Colors.blueGrey,height: 100,width: 100,),
                  Container(child: Text("row2"),color:Colors.blue,height: 100,width: 100,),
                  Container(child: Text("row3"),color:Colors.red,height: 100,width: 100,),
                  Container(child: Text("row4"),color:Colors.orange,height: 100,width: 100,),
                  Container(child: Text("row5"),color:Colors.green,height: 100,width: 100,),
                ],
              ),
             )
          ),
        ),
        drawer: Drawer(),
     );
  }
}