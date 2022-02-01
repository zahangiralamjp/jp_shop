import 'package:flutter/material.dart';
import 'package:jp_shop/apiservices/apiServices.dart';

import 'Category.dart';
import 'cartScreen.dart';
import 'productDetails.dart';


class ProductList extends StatelessWidget {
  const ProductList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryPage()));
          }, icon: Icon(Icons.list_alt_outlined)
          ),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
          }, icon: Icon(Icons.shopping_cart_sharp)),
        ],
      ),
      body: FutureBuilder(
        future: ApiServices().getProductList(),
        builder: (contex, AsyncSnapshot snapshot){
          if(snapshot.hasData){
            return Center(
              child: ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (contex,index){
                  return ListTile(
                    leading: Image.network(snapshot.data[index]['image'],height: 50,width: 50,),
                    title: Text(snapshot.data[index]['title']),
                    subtitle: Text("BDT "+snapshot.data[index]['price'].toString()),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(snapshot.data[index]['id'])));
                    },
                  );
                }
                ),
            );
          }
          return Center(child: CircularProgressIndicator());
        }
        ),
      
    );
  }
}