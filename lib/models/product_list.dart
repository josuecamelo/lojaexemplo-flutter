import 'package:flutter/material.dart';
import 'package:lojaexemplo/data/dummy_data.dart';
import 'package:lojaexemplo/models/product.dart';

class ProductList with ChangeNotifier{
  List<Product> _items = dummyProducts;

  List<Product> get items => [..._items]; //clonando lista para não retornar a referencia e sim um clone

  void addProduct(Product product){
    _items.add(product);
    //já que houve mudança notificar os interessados
    notifyListeners();
  }
}