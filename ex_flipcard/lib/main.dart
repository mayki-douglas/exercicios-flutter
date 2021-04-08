import 'dart:ui';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter flipcard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter flipcard'),
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

  GlobalKey<FlipCardState> _cardKey = GlobalKey<FlipCardState>();

  _renderBackground() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
    );
  }

  _renderBack(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Center(
        child: Image.asset('images/cirrus.png', width: 50.0, height: 50.0),
      ),
     );
  }

  _renderFront(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/nubank.png', width: 100.0, height: 100.0,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(right: 10.0, top: 60.0),),
              Image.asset('images/chip.png', width: 40.0, height: 40.0,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 100.0, bottom: 0.0)),
              Image.asset('images/mastercard.png', width: 90.0, height: 40.0,),
            ],
          ),
        ],
      )
    );
  }

  _renderCard(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 70.0, bottom: 290.0),
      color: Colors.white,
      child: FlipCard(
        key: _cardKey,
        flipOnTouch: false,
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        onFlipDone: (status) {
          print('status: $status');
        },
        front: _renderFront(),
        back: _renderBack(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
       fit: StackFit.expand,
       children: [
         _renderBackground(),
           Column(
             children: [
               Expanded(
                 child: _renderCard(context),
               ),
             ],
           )
         ],
       ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _cardKey.currentState.toggleCard(),
          tooltip: 'Test',
        child: Icon(Icons.autorenew_rounded),
      ),
    );
  }
}