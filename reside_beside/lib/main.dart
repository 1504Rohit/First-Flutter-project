import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Reside Beside'),
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
  var idcontroller = TextEditingController();
  var passwcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
             TextField(
              controller: idcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(11.0)),
                hintText: "Enter username..",
                labelText: "Username"
              ),
              
              
            ),
             SizedBox(height: 10,),          
              TextField(
              controller: passwcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(11.0)),
                hintText: "Password",
                labelText: "Password",
                
              ),
              obscureText: true,
            ),
             SizedBox(height: 10,), 
             ElevatedButton(onPressed: (() {
               
             }), child:Text("Login")), 
            ],
          ),
        )
      )
    );
  }
}
