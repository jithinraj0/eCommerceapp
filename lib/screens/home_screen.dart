import 'package:ecommerce_app/Utils/constants.dart';
import 'package:flutter/material.dart';

import 'productlist_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            kAppname,
            style: TextStyle(fontSize: 45, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              child: const Text('View all products'),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductListScreen(),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
