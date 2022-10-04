
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sec_it_developers_getx_course/Model/Modelling.dart';

//var injectionOfModule = Get.put(ProductList);

class DataService {

  static var client = http.Client();
  static Future<List<ProductModel>?> fetchProduct() async {
    List<ProductModel> productList=[];
    var response = await client.get(Uri.parse(
        "https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"));
    List<dynamic> jsonResponse =jsonDecode(response.body);
    if (response.statusCode == 200) {
      for(int i=0;i<jsonResponse.length;i++){
        // print(jsonResponse[i]);
       productList.add(ProductModel.fromJson(jsonResponse[i]));
       print(productList[i].name);
      }
    } else {
      // ignore: avoid_print
      print("Connection is not successful");
    }
    return productList;
    // 8alban dah error
  }
}
