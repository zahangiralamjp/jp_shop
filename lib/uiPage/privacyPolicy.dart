import 'package:flutter/material.dart';

import 'MainDrawer.dart';
import 'home.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help & Support'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(Icons.home)),
        ],
      ),
      body: SafeArea(
          child: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: 400,
                height: 500,
                // color: Colors.blueGrey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ////// Text Here ////////////////
                      ListTile(
                        title: Text('What is Lorem Ipsum?'),
                      ),
                      ListTile(
                        title: Text(
                            'the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        title: Text('Where does it come from?'),
                      ),
                      ListTile(
                        title: Text(
                            'Aplication the 1960s the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. preferences'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
      drawer: MainDrawer(),
    );
  }
}
