import 'package:flutter/material.dart';
import 'package:lojaexemplo/models/product_list.dart';
import 'package:lojaexemplo/pages/counter_page.dart';
import 'package:lojaexemplo/pages/product_detail_page.dart';
import 'package:lojaexemplo/pages/products_overview_page.dart';
import 'package:lojaexemplo/providers/counter.dart';
import 'package:lojaexemplo/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato'
      ),
      home: ProductsOverviewPage(),
      routes: {
        AppRoutes.PRODUCT_DETAIL:(ctx) => ProductDetailPage()
      },
    );*/
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewPage(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}