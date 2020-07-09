import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget{
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  Color background = Colors.white.withOpacity(0); //initial color is blank

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:Container( //wrapping button with Container to get fullscreen size
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: FlatButton(
            onPressed: () {
              setState(() {
                background = Colors.primaries[math.Random().nextInt(Colors.primaries.length)]; //getting random color
              });
            },
            color: background, //color will change automaticly after changing widget state
            child: Text('Hey there'),
          ),
        ),
      ),
    );
  }
}