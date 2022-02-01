import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jp_shop/apiservices/apiServices.dart';
import 'package:jp_shop/uiPage/MainDrawer.dart';
import 'package:jp_shop/uiPage/login.dart';
import 'package:jp_shop/uiPage/profile.dart';
import 'package:jp_shop/uiProductPage/ProductByCategory.dart';
import 'package:jp_shop/uiProductPage/cartScreen.dart';
import 'package:jp_shop/uiProductPage/productList.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductList()));
              },
              icon: Icon(Icons.shopping_bag)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogInPage()));
              },
              icon: Icon(
                Icons.login,
              )),
        ],
        //  actions: [
        //   IconButton(
        //       onPressed: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => ProductCatagorie())),
        //       },
        //       icon: Icon(Icons.list)),
        // ],
        title: Text('Product List'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            children: [
              // SizedBox(
              //   height: 2,
              // ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Products'),
              ),
              SizedBox(
                height: 3,
              ),
              /////////////////////////////////
              Center(child: ListView(
                children: [
                  


                ],
              )),
            ],
          ),
        ),
      )),
      drawer: MainDrawer(),
    );
  }
}
///////////////////////
class AdsSliderCard extends StatelessWidget {
  const AdsSliderCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}









/*
Container(
                width: double.infinity,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.redAccent,
                ),
                child: Image.asset('/images/banner.jpg'),
              ),
*/