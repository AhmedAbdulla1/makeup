import 'package:get/get.dart';
import 'package:sec_it_developers_getx_course/Model/Modelling.dart';

import 'package:sec_it_developers_getx_course/Services/Service.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  List<ProductModel> ? product;
  void FetchProduct() async {
    try {
      //check isLoading null? -> await ll data
      isLoading(true);
      product = await DataService.fetchProduct();
      print(product);
    } finally {
      isLoading(false);
    }
  }
}
