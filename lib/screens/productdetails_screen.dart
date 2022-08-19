import 'package:ecommerce_app/screens/checkout_screen.dart';
import 'package:flutter/material.dart';

import '../Utils/constants.dart';
import '../model/products.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          elevation: 0,
          title: const Text(
            kAppname,
          ),
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                  product.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Price\n",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          /* color: Colors.white, */ fontWeight:
                              FontWeight.w100),
                    ),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          /* color: Colors.white, */ fontWeight:
                              FontWeight.bold),
                    ),
                  ],
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: Text(
                product.description,
                style: const TextStyle(height: 1.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SizedBox(
                width: size.width,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: product.color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckOutScreen(
                          amount: product.price,
                        ),
                      )),
                  child: Text(
                    "Buy  Now".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
