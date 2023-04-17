import 'package:flutter/material.dart';
import 'package:sneaker_app/screens/cart_page_view.dart';
import 'package:sneaker_app/screens/shop_page_view.dart';
import 'package:sneaker_app/screens/start_page_view.dart';
import 'package:sneaker_app/widgets/my_bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

import 'models/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const StartPage(),
      ),
    );
  }
}
