import 'package:ecommerce_app/Utils/constants.dart';
import 'package:flutter/material.dart';

import '../model/products.dart';
import '../widgets/product_card.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: const Text(
          kAppname,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ProductCard(
                  product: products[index],
                  index: index,
                )),
      ),
    );
  }
}
