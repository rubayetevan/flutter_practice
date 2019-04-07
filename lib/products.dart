import 'package:flutter/material.dart';
import './pages/product.dart';

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
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>ProductPage(),),);
                  },
                  child: Text('Details'),
                )
              ],
            ),
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
