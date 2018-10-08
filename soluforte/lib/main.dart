import 'package:flutter/material.dart';
import 'TelaPrincipal.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyApp2();
  }
} 

class MyApp2 extends State{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monitoramento Soluforte',
      theme: new ThemeData(
        primaryColor: const Color(0xFF43a047),
        accentColor: const Color(0xFFffcc00),
        primaryColorBrightness: Brightness.dark,
      ),
      home: new TelaPrincipal(),
    );
  }

}