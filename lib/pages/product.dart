import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/food.jpeg'),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text('Details'),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                child: Text('Back'),
              )
            )
          ],
        ),
      ),
    );
  }

}