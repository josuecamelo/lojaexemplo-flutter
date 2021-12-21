import 'package:flutter/material.dart';
import 'package:lojaexemplo/data/dummy_data.dart';
import 'package:lojaexemplo/models/product.dart';

class ProductList with ChangeNotifier{
  List<Product> _items = dummyProducts;
  bool _showFavoriteOnly = false;

  //List<Product> get items => [..._items]; //clonando lista para não retornar a referencia e sim um clone

  List<Product> get items{
    if(_showFavoriteOnly){
      return _items.where((prod) => prod.isFavorite).toList();
    }
    return [..._items];
  }

  void showFavoriteOnly(){
    _showFavoriteOnly = true;
    notifyListeners();
  }

  void showAll(){
    _showFavoriteOnly = false;
    notifyListeners();
  }

  void addProduct(Product product){
    _items.add(product);
    //já que houve mudança notificar os interessados
    notifyListeners();
  }
}