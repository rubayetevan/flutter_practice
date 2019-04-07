import 'package:flutter/material.dart';
import 'products.dart';
import 'product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct = 'Food tester';

  //ProductManager(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductState();
  }
}

class _ProductState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    // _products.add(widget.startingProduct);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add('Advanced food tester');
      print(_products);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(10.0), child: ProductControl(_addProduct)),
        Expanded(
          child: Products(_products),
        )
      ],
    );
  }
}
