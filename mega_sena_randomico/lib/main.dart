import 'package:flutter/material.dart';
import 'package:flutter_app/model/generate_number.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Número Randomico',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        title: 'Número randomico',
      ),
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

  void _generateNumber() {
    setState(() {
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _generateNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mega Sena de Chernobyl'),
        centerTitle: true,
      ),
      backgroundColor: Colors.black12,
      body: Center(
        child: Text(
          '${Number.generateRandomicNumber()} - ${Number.generateRandomicNumber()} - ${Number.generateRandomicNumber()} - ${Number.generateRandomicNumber()} - ${Number.generateRandomicNumber()} - ${Number.generateRandomicNumber()}',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _generateNumber(),
        tooltip: 'Número Randomico',
        child: Icon(Icons.attach_money),
      ),
    );
  }
}