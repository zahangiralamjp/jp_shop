import 'package:flutter/material.dart';
import 'package:jp_shop/uiPage/MainDrawer.dart';

import 'home.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
        title: Text('My Profile'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Image(
                      width: 100,
                      height: 100,
                      image: AssetImage('/images/profile.jpg'),
                    ),
                  ),
                ),
                Text(
                  'Name : User Name',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Email : jpshop@gmail.com',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Container(
                  width: 300,
                  height: 300,
                  // color: Colors.cyanAccent,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('Mobile Number   :   ??'),
                      ),
                      ListTile(
                        leading: Icon(Icons.share),
                        title: Text('Referal Code   :   ??'),
                      ),
                      ListTile(
                        leading: Icon(Icons.map),
                        title: Text('District   :   ??'),
                      ),
                      ListTile(
                        leading: Icon(Icons.edit),
                        title: Text('Edit Profile '),
                      ),
                      MaterialButton(
                        color: Colors.amber,
                        splashColor: Colors.black,
                        minWidth: double.infinity,
                        height: 35,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.amber,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text('Log out'),
                      ),
                    ],
                  ),

                  /*
Row(children: [ Icon(Icons.phone,),Text('Mobile number'), SizedBox(width: 15,),Text('01979 888848')],),SizedBox(height: 20,),
                  */
                ))
              ],
            ),
          ),
        ),
      )),
      drawer: MainDrawer(),
    );
  }
}
