import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String,String>> products;
  final Function _deleteProduct;

  Products(this.products,this._deleteProduct);


  Widget _buidProduct(BuildContext context, int index) {
    Widget item;
    if (products.length > 0) {
      item = Card(
        child: Column(
          children: <Widget>[
            Image.asset(products[index]['image']),
            Text(products[index]['title']),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: (){
                    Navigator.push<bool>(context,
                      MaterialPageRoute(
                        builder: (BuildContext context)=>ProductPage(products[index]),
                      ),
                    ).then((bool value){
                      if(value!=null && value==true){
                        _deleteProduct(index);
                      }
                      print(value);
                    });
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
