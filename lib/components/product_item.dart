import 'package:flutter/material.dart';
import 'package:lojaexemplo/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Image.network(product.imageUrl, fit: BoxFit.cover,),
      footer: GridTileBar(
        title: Text(product.title, textAlign: TextAlign.center,),
        backgroundColor: Colors.black54,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.favorite),
        ), //no inicio da barra
        trailing: IconButton(
          onPressed: (){},
          icon: Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
