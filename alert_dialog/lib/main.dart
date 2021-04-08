import 'package:flutter/material.dart';

import 'model/person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dados do Usuário',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Dados do Usuário'),
      debugShowCheckedModeBanner: false,
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
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Clique no botão abaixo para saber os seus dados.', textAlign: TextAlign.center, style: TextStyle(fontSize: 25.0),),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('enviou alerta');

          final person = Person();
          person.name = 'Mayki';
          person.lastName = 'Douglas';
          person.email = 'mayki.douglas1@gmail.com';
          person.age = 26;

          AlertDialog alert = AlertDialog(
            title: Text('Usuário'),
            content: Text('${person.toString()}'),
            actions: [
              TextButton(onPressed: () {
                print('Clicou no OK');
                Navigator.of(context).pop();
              }, child: Text('OK')),
            ],
          );
          showDialog(context: context, builder: (BuildContext context){
            return alert;
          });
        },
        tooltip: 'usuário',
        child: Icon(Icons.account_circle_outlined),
      ),
    );
  }
}