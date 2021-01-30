import 'package:flutter/material.dart';
import 'package:manutencao_firebase/screens/home_screen.dart';

void main() {
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Manutenção FIES",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color.fromARGB(255, 4, 125, 141)),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
