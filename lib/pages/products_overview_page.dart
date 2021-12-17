import 'package:flutter/material.dart';
import 'package:lojaexemplo/components/product_item.dart';
import 'package:lojaexemplo/data/dummy_data.dart';
import 'package:lojaexemplo/models/product.dart';

class ProductsOverviewPage extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;

  ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Loja"),
      ),
      body: GridView.builder(
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
      ),
    );
  }
}
