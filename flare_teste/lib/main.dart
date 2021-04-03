import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Flare',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter - Flare'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text('Exemplo - Flare'),),
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(
          child: Container(
            child: FlareActor(
              'assets/WorldSpin.flr',
              fit: BoxFit.contain,
              animation: 'roll',
             ),
            width: 300,
            height: 300,
           ),
          )
         ],
       ),
    );
  }
}
