import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'model/sorting_hat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter async',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Chapéu seletor',),
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

  String _name = "";
  String _house = "";
  String _phrase = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
          body: Column(
           children: [
             Text('olá jovem bruxo $_name'),
             Text('Sua casa é: $_house'),
             Text('$_phrase'),
             TextButton(
               onPressed: () async {
               print('clicou');
               setState(() {
                 _name = _getName();
               });
               
               final URL = Uri.https('www.potterapi.com', '/v1/sortinghat');
               final myFuture = http.get(URL);

               myFuture.then((response) {
                 if(response.statusCode == 200) {
                   print('tudo ok');

                   var jsonResponse = convert.jsonDecode(response.body);
                   print(jsonResponse);
                   setState(() {
                     _house = jsonResponse;
                     _phrase = SortingHat.getPhrase(jsonResponse);
                   });
                 } else{
                   print('errou!');
                 }
               }
               );
             },
               child: Text('Clique para ver a casa'),
                )
            ],
          ),
       );
     }
     String _getName() {
     return 'Mayki';
  }
}