import 'package:flutter/material.dart';
import 'package:flutter_app_practice/product_manager.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy List'),
      ),
      body: ProductManager(),
    );
  }
}
