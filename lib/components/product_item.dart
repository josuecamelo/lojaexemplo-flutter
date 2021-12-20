import 'package:flutter/material.dart';
import 'package:lojaexemplo/models/product.dart';
import 'package:lojaexemplo/utils/app_routes.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUCT_DETAIL,
              arguments: product,
            );
          },
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Product>(builder: (ctx, product, _) => IconButton(
            onPressed: () {
              product.toogleFavorite();
              print("Clicou em Favoritar Item");
            },
            icon: Icon(
                product.isFavorite ? Icons.favorite : Icons.favorite_border),
            color: Theme.of(context).accentColor,
          )),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}