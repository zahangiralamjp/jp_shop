import 'package:flutter/material.dart';

import 'package:jp_shop/uiPage/home.dart';
import 'package:jp_shop/uiProductPage/cartScreen.dart';

import 'uiPage/SplashScreen.dart';
import 'uiPage/forgetPassword.dart';
import 'uiPage/helpSupport.dart';
import 'uiPage/login.dart';

import 'uiPage/profile.dart';
import 'uiPage/signUp.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'SP SHOP',
    home: LogInPage(),
  ));
}

//////////////////////////////////////////////

/*
 actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(Icons.home)),
        ],
*/