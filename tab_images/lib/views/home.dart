import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ZapCleverson'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.add_a_photo),),
              Text('CONVERSAS', style: TextStyle(fontSize: 10),),
              Text('STATUS', style: TextStyle(fontSize: 10),),
              Text('CHAMADAS', style: TextStyle(fontSize: 10),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/camerazap.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/zap putin.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/status.png'),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/zapp.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
