import 'package:flutter/material.dart';
import 'Screens/products_overview_screen.dart';
import 'Screens/product_detail_screen.dart';
import 'providers/products.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
          child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(primarySwatch: Colors.purple,
        accentColor:Colors.deepOrange,
        fontFamily: 'Lato'
         ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx)=>ProductDetailScreen(),
        },
      
      ),
    );
  }
}