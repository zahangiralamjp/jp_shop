import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_shop/apiservices/apiServices.dart';
import 'package:jp_shop/uiPage/home.dart';

class ProductDetails extends StatelessWidget {
  final int id;
  ProductDetails(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(Icons.home)),
        ],
        title: Text('Product Details'),
      ),
      body: FutureBuilder(
          future: ApiServices().getProductDetails(id),
          builder: (contex, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        snapshot.data['image'],
                        height: 200,
                        width: 200,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text(
                          snapshot.data['title'],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('BDT ' + snapshot.data['price'].toString()),
                      SizedBox(
                        height: 30,
                      ),
                      Chip(
                        label: Text(
                          snapshot.data['category'],
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        backgroundColor: Colors.deepPurple,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(snapshot.data['description']),
                    ],
                  ),
                ),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await ApiServices().updateCart(1, id);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.green,
            content: Text('Product added to cart.'),
          ));
        },
        child: Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
