import 'package:flutter/material.dart';
import 'package:lojaexemplo/components/product_item.dart';
import 'package:lojaexemplo/models/product.dart';
import 'package:lojaexemplo/models/product_list.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    final List<Product> loadedProducts = provider.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
      ),
      //exibe 2 Produto por linha
      itemBuilder: (BuildContext context, int index) =>
          ProductItem(product: loadedProducts[index]),
    );
  }
}