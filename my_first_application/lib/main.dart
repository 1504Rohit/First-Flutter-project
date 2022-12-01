import 'package:flutter/material.dart';

import 'home_page.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home:home_page(),
    );
    
  }
}