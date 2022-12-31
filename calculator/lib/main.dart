import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator"),
      ),
      drawer: Drawer(),
      body:Center(
        child: Container(
        width: 300,
        height: 300,
        child:  Column(
          
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: no1controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(11.0))
                ),
              ),
              SizedBox(height: 20,),
               TextField(
                keyboardType: TextInputType.number,
                controller: no2controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(11.0))
                ),
              ),
               SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    var no1=int.parse(no1controller.text.toString());
                    var no2=int.parse(no2controller.text.toString());

                    var sum=no1+no2;

                    result="The sum of $no1 and $no2 is $sum";

                    setState(() {
                      
                    });

                  }, child: Text("+")),
                  ElevatedButton(onPressed: (){
                    var no1=int.parse(no1controller.text.toString());
                    var no2=int.parse(no2controller.text.toString());

                    var sub=no1-no2;

                    result="The subtraction of $no1 and $no2 is $sub";

                    setState(() {
                      
                    });
                  }, child: Text("-")),
                  ElevatedButton(onPressed: (){
                    var no1=int.parse(no1controller.text.toString());
                    var no2=int.parse(no2controller.text.toString());

                    var mul=no1*no2;

                    result="The multiplication of $no1 and $no2 is $mul";

                    setState(() {
                      
                    });
                  }, child: Text("*")),
                  ElevatedButton(onPressed: (){
                    var no1=int.parse(no1controller.text.toString());
                    var no2=int.parse(no2controller.text.toString());

                    var div=no1/no2;

                    result="The division of $no1 and $no2 is $div";

                    setState(() {
                      
                    });
                  }, child: Text("/")),

                ],
              ),
              SizedBox(height: 20,),
              Text(result,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color:Colors.blue),)
              
            ],
          ),
      ), 
      ) 
      
    );
  }
}
