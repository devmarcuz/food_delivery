import 'package:flutter/material.dart';
import 'package:foodie/constants/constants.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(elevation: 0,
      backgroundColor: kOffWhite,
      title: const Text('Category Page'),),
      body: const Center(child: Text('Category page'),),
    );
  }
}
