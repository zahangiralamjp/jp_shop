import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  Future getProductList() async {
    final producturl = Uri.parse("https://fakestoreapi.com/products");
    final response = await http.get(producturl);
    // print(response.body);
    return json.decode(response.body);
  }

  Future getProductDetails(int id) async {
    final productDetailsurl =
        Uri.parse("https://fakestoreapi.com/products/$id");
    final response = await http.get(productDetailsurl);
    // print(response.body);
    return json.decode(response.body);
  }

  Future getProductCategory() async {
    final productCategoryurl =
        Uri.parse("https://fakestoreapi.com/products/categories");
    final response = await http.get(productCategoryurl);
    // print(response.body);
    return json.decode(response.body);
  }

  Future getProductByCategory(String categoryName) async {
    final productDetailsurl =
        Uri.parse("https://fakestoreapi.com/products/category/$categoryName");
    final response = await http.get(productDetailsurl);
    // print(response.body);
    return json.decode(response.body);
  }

  Future userLogin(String username, String password) async {
    final loginApiUrl = Uri.parse("https://fakestoreapi.com/auth/login");
    final response = await http
        .post(loginApiUrl, body: {'username': username, 'password': password});
    // print(response.statusCode);

    return response.statusCode;
  }

  Future updateCart(int userId, int productId) async {
    final cartUrl = Uri.parse("https://fakestoreapi.com/carts/$userId");
    final response = await http.put(cartUrl, body: {
      'userId': '$userId',
      'date': DateTime.now().toString(),
      'products': [
        {
          'productId': '$productId',
          'quantity': 1,
        }
      ].toString()
    });
    return json.decode(response.body);
  }

  Future getCart(int userId) async {
    final carturl = Uri.parse("https://fakestoreapi.com/carts/$userId");
    final response = await http.get(carturl);
    // print(response.body);
    return json.decode(response.body);
  }

  Future deleteCart(int userId) async {
    final cartdeleteurl = Uri.parse("https://fakestoreapi.com/carts/$userId");
    final response = await http.delete(cartdeleteurl);
    // print(response.body);
    return json.decode(response.body);
  }
}
