import 'dart:html';

import 'package:flutter/material.dart';
import 'package:jp_shop/uiPage/helpSupport.dart';
import 'package:jp_shop/uiPage/home.dart';
import 'package:jp_shop/uiPage/privacyPolicy.dart';
import 'package:jp_shop/uiPage/profile.dart';
import 'package:jp_shop/uiProductPage/Category.dart';
import 'package:jp_shop/uiProductPage/cartScreen.dart';
import 'package:jp_shop/uiProductPage/productList.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var profileImage = '/images/profile.jpg';
    return Drawer(
      // backgroundColor: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 180,
              color: Colors.white70,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        width: 100,
                        height: 100,
                        image: AssetImage('/images/profile.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'User Name',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'User Email ID',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            /////////////////////////////
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));

                ///CartScreen
              },
              leading: Icon(Icons.shopping_bag),
              title: Text('My Cart'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.list),
              title: Text('My Orders'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.local_activity),
              title: Text('M Wishlist'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
            ),
            ListTile(
              title: Text('Products'),
            ),

            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CategoryPage()));

                ////// CategoryPage
              },
              leading: Icon(Icons.category_sharp),
              title: Text('Catagories'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductList()));

                ///ProductList
              },
              leading: Icon(Icons.production_quantity_limits_outlined),
              title: Text('View Products'),
            ),

            ListTile(
              title: Text('Aplication preferences'),
            ),

            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpSupportPage()));
              },
              leading: Icon(Icons.help_center),
              title: Text('Help & Support'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.language),
              title: Text('Languages'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PrivacyPolicy()));
              },
              leading: Icon(Icons.privacy_tip),
              title: Text('Privacy & Policy'),
            ),
          ],
        ),
      ),
    );
  }
}
