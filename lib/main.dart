import 'package:flutter/material.dart';

import 'login_screen_2.dart';
import 'register.dart';
import 'screen/home_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Minegree',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/register': (context) => MyRegister(),
        '/home_screen': (context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: LoginScreen2(
          backgroundColor1: Colors.black,
          backgroundColor2: Colors.black,
          highlightColor: Colors.black45,
          foregroundColor: Colors.green,
        ),
      ),
    );
  }

  Container buildPage(Color color, String text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}