import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double _size = 60.0;

@override
    Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('Flutter row e column'),),
    backgroundColor: Colors.black,
    body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: Colors.green,
          width:100,
          height: 100,
          child: FlutterLogo(size: _size,),
        ),
        Container(
          color: Colors.red,
          width:100,
          height: 100,
          child: FlutterLogo(size: _size,),
        ),
        Container(
          color: Colors.yellow,
          width:100,
          height: 100,
          child: FlutterLogo(size: _size,),
        )
      ],
     )
    );
  }
}