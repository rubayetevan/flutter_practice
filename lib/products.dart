import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  Widget _buidProduct(BuildContext context, int index) {
    Widget item;
    if (products.length > 0) {
      item = Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/food.jpeg'),
            Text(products[index]),
          ],
        ),
      );
    } else {
      item = Center(
        child: Text('Press add product button to add product'),
      );
    }
    return item;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buidProduct,
      itemCount: products.length,
    );
  }
}
