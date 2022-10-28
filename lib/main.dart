import 'package:flutter/material.dart';
import 'package:indocars/MyProfil.dart';
import 'Tampilan_mobil.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new Home(),
      routes: <String, WidgetBuilder>{
        '/page1': (BuildContext context) => new Home(),
        '/page2': (BuildContext context) => new MyProfil(),
        '/page3': (BuildContext context) => new Tampilanmobil(),
      },
    ),
  );
}

// ignore: must_be_immutable
class Home extends StatelessWidget {
  String teks = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Rental Mobil'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.person_outline),
              onPressed: () {
                Navigator.pushNamed(context, '/page2');
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Container(
              child: Image.asset(
                'images/rentalmobil.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            new Container(
              padding: new EdgeInsets.all(50.0),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    decoration: new InputDecoration(
                      hintText: 'Masukkan User Name Anda',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  var route = new MaterialPageRoute(
                    builder: (context) => Tampilanmobil(),
                  );
                  Navigator.of(context).push(route);
                },
                padding: EdgeInsets.all(10.0),
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  RaisedButton(
      {Null Function() onPressed,
      EdgeInsets padding,
      MaterialAccentColor color,
      Color textColor,
      Text child}) {}
}
