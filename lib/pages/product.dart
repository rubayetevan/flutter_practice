import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  Map<String, String> product;

  ProductPage(this.product);
  _showWarningDialog(BuildContext context){
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Are you sure?'),
        content: Text('This ca not be unndone!'),
        actions: <Widget>[
          FlatButton(
            child: Text('Continue'),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context, true);
            },
          ),
          FlatButton(
            child: Text('Discard'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text(product['title']),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(product['image']),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text('Details'),
              ),
              Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      _showWarningDialog(context);
                    },
                    child: Text('Delete'),
                  ))
            ],
          ),
        ),
      ),
      onWillPop: () {
        Navigator.pop(context, false);
        print("back button pressed");
        return Future.value(false);
      },
    );
  }
}
