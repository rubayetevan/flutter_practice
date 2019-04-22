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
  List<Map<String,String>> _products = [];

  @override
  void initState() {
    super.initState();
    // _products.add(widget.startingProduct);
  }

  void _addProduct(Map product) {
    setState(() {
      _products.add(product);
      print(_products);
    });
  }

  void _deleteProduct(int index){
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin:EdgeInsets.all(10.0),
            child: ProductControl(_addProduct)
        ),
        Expanded(
          child: Products(_products,_deleteProduct),
        )
      ],
    );
  }
}
