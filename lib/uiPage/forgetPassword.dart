import 'package:flutter/material.dart';
import 'package:jp_shop/uiPage/login.dart';
import 'package:jp_shop/uiPage/signUp.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

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
                      'Find Your Account',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Please enter your email address or mobile number to search for your account.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
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
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 55,
                      color: Colors.amber,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.amber,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Search',
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
                                      builder: (context) => LogInPage()));
                            },
                            child: Text('Log in Account'),
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
