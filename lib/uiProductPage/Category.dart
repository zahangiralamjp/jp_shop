import 'package:flutter/material.dart';
import 'package:jp_shop/apiservices/apiServices.dart';

import 'ProductByCategory.dart';


class CategoryPage extends StatelessWidget {
  const CategoryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
      ),
      body: FutureBuilder(
        future: ApiServices().getProductCategory(),
        builder: (contex, AsyncSnapshot snapshot){
          if(snapshot.hasData){
            return Center(
              child: ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (contex,index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductByCategory(snapshot.data[index])));
                    },
                    child: Card(
                      elevation: 2,
                      margin: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.deepPurple,
                      child: Container(
                        padding: EdgeInsets.all(40),
                        child: Center(
                          child: Text(snapshot.data[index].toString().toUpperCase()),
                        ),
                      ),
                    ),
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