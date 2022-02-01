import 'package:flutter/material.dart';
import 'package:jp_shop/apiservices/apiServices.dart';
import 'package:jp_shop/uiPage/MainDrawer.dart';
import 'package:jp_shop/uiPage/home.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
        title: Text('Cart Items'),
      ),
      body: FutureBuilder(
          future: ApiServices().getCart(1),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              List products = snapshot.data['products'];
              return ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (contex, index) {
                    return FutureBuilder(
                        future: ApiServices()
                            .getProductDetails(products[index]['productId']),
                        builder: (contex, AsyncSnapshot asyncSnapshot) {
                          if (asyncSnapshot.hasData) {
                            return Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Card(
                                child: ListTile(
                                  leading: Image.network(
                                    asyncSnapshot.data['image'],
                                    height: 50,
                                    width: 50,
                                  ),
                                  title: Text(asyncSnapshot.data['title']),
                                  subtitle: Text("Quantity " +
                                      products[index]['quantity'].toString()),
                                  trailing: IconButton(
                                      onPressed: () async {
                                        await ApiServices().deleteCart(1);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'Product deleted successfully.')));
                                      },
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      )),
                                ),
                              ),
                            );
                          }
                          return LinearProgressIndicator();
                        });
                  });
            }
            return Center(child: CircularProgressIndicator());
          }),
      drawer: MainDrawer(),
    );
  }
}
