import 'package:flutter/material.dart';
import 'package:lojaexemplo/components/product_grid.dart';
import 'package:lojaexemplo/models/product_list.dart';
import 'package:provider/provider.dart';

enum FilterOptions{
  Favorite,
  All
}

class ProductsOverviewPage extends StatelessWidget {
  ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Loja"),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Somente Favoritos"),
                value: FilterOptions.Favorite,
              ),
              PopupMenuItem(
                child: Text("Todos"),
                value: FilterOptions.All,
              ),
            ],
            onSelected: (FilterOptions selectedValue){
              if(selectedValue == FilterOptions.Favorite){
                provider.showFavoriteOnly();
              }else{
                provider.showAll();
              }
            },
          )
        ],
      ),
      body: ProductGrid(),
    );
  }
}
