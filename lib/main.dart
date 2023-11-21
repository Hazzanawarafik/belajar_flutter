import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          // elevation: 0.0,
          leading: Icon(Icons.home),
          title: Center(child: Text('Myapp')),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.attach_money)),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text('Menu 1')),
                PopupMenuItem(child: Text('Menu 1')),
                PopupMenuItem(child: Text('Menu 1')),
              ];
            })
          ],
        ),
        body: ListView(
          children: <Widget>[
            Center(
                child: Text(
              'Hazza Nawarafi Khairullah',
              style: TextStyle(fontSize: 20),
            )),
            Text(
              'Deskripsi Project',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 40),
            ),
            Text(
              'Project Besar',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 30,
              ),
            ),
            Text(
              'Disini Project',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 40,
                decoration: TextDecoration.underline,
                color: Colors.red,
              ),
            ),
            Text(
              'Coba Style Text Lagi',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
