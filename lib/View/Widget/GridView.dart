import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'package:sec_it_developers_getx_course/Controller/Controller.dart';
import 'package:sec_it_developers_getx_course/View/Widget/custom_card.dart';

class MyGridView extends StatelessWidget {
  MyGridView({super.key,required this.injection });

  var injection = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80,right: 8,left: 8),
      child: GridView.builder(
        itemCount: injection.product!.length,
        clipBehavior: Clip.none,
        gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 100,
        ),
        itemBuilder: (context, index) {
          return CustomCard(product: injection.product![index]);
        },
      ),
    );
  }
}
