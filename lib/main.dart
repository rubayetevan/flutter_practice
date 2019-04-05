import 'package:flutter/material.dart';
import 'product_manager.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Hello',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Easy List'),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {},
            ),
            body: ListView(
              children: <Widget>[
                ProductManager('Food Tester')
              ],
            )));
  }
}

