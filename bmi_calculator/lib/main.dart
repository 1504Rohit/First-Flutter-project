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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  var ftcontroller = TextEditingController();
  var inchcontroller = TextEditingController();
  var wtcontroller = TextEditingController();

  var Result="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      drawer: Drawer(),
      body:Center(
        child: Container(
          height: 600,
          width: 300,
          child: Column(
        children: [
          Text("BMI",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.blue),),
          SizedBox(height: 30,),
          TextField(
            controller:ftcontroller ,
              keyboardType: TextInputType.number,
            decoration: InputDecoration(
            border:OutlineInputBorder(borderRadius: BorderRadius.circular(11.0)),
            hintText: "Enter height in ft.",
            labelText: "Ft."
            ),
          ),
          SizedBox(height: 10,),
          TextField(
             controller: inchcontroller,
               keyboardType: TextInputType.number,
             decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(11.0)),
              hintText: "Enter height in inch.",
              labelText: "Inch."

             ),
          ),
           SizedBox(height: 10,),
          TextField(
            controller: wtcontroller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(11.0)),
              hintText: "Enter your Weight in Kgs.",
              labelText: "Weight"
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {
                var FT = ftcontroller.text.toString();
                var INCH = inchcontroller.text.toString();
                var WT =wtcontroller.text.toString();

                if(FT!="" && INCH!="" && WT!=""){
                  var ft = int.parse(FT);
                var inch = int.parse(INCH);
                var wt =int.parse(WT);
                  var meter = ((ft*12)+inch)*0.0254;
                  var metersquare = meter*meter;

                  var bmi= wt/metersquare;
                  Result="Your BMI is $bmi";

                  setState(() {
                  
                  });

                }else{
                  
                  setState(() {
                    Result="Please fillup whole fields.";
                  });
                }
                
              }, child: Text("Calculate")),

              ElevatedButton(onPressed: (() {
                 setState(() {
                   ftcontroller.clear();
                  wtcontroller.clear();
                  inchcontroller.clear();
                  
                 });
              }), child: Text("Reset"),)
            ],
          ),
          SizedBox(height: 20,),
          Text("$Result",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
          AnimatedContainer(duration: )
        ],
      ),
        ),
      ),
    );
  }
}
