import 'package:flutter/material.dart';
import 'package:jp_shop/apiservices/apiServices.dart';
import 'package:jp_shop/uiPage/forgetPassword.dart';
import 'package:jp_shop/uiPage/signUp.dart';

import 'home.dart';

class LogInPage extends StatelessWidget {
  TextEditingController nameController =
      TextEditingController(text: 'mor_2314');
  TextEditingController passwordController =
      TextEditingController(text: '83r5^_');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(),
      body: SafeArea(
          child: Center(
        child: Stack(
          children: [
            Container(
              width: 350,
              height: 400,
              color: Colors.white,
            ),
            Positioned(
              bottom: 2,
              top: 2,
              left: 2,
              right: 2,
              child: Container(
                width: 345,
                height: 395,
                // color: Colors.red,
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      'LOG IN TO JPSHOP',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelText: 'User Name',
                        hintText: 'Enter Name',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelText: 'User Password',
                        hintText: 'Enter Password',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 55,
                      color: Colors.amber,
                      onPressed: () async {
                        final code = await ApiServices().userLogin(
                            nameController.text, passwordController.text);
                        if (code == 200) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text('Success')));
                          Future.delayed(Duration(seconds: 2), () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Opps Something Wrong.')));
                        }
                      },
                      //////////////////////////////////////////
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.amber,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPassword()));
                            },
                            child: Text('Forgotten Account'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage()));
                            },
                            child: Text('Sign up for JP SHOP'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}