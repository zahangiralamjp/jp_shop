import 'package:flutter/material.dart';
import 'package:jp_shop/apiservices/apiServices.dart';
import 'package:jp_shop/uiPage/MainDrawer.dart';
import 'package:jp_shop/uiProductPage/productDetails.dart';


class ProductByCategory extends StatelessWidget {
  final String catName;
  ProductByCategory(this.catName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catName),
      ),
      body: FutureBuilder(
        future: ApiServices().getProductByCategory(catName),
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
        drawer: MainDrawer(),
    );
  }
}