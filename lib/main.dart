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
        body: Center(
          child: Text('Hallo First Aplikasi'),
        ),
      ),
    );
  }
}
