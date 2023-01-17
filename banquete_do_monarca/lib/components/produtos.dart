import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String asset;

  Product({
    required this.name,
    required this.price,
    required this.asset,
  });
}

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
