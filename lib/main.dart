import 'package:core_flutter_exam_2/View/cart_screen.dart';
import 'package:core_flutter_exam_2/View/home_screen.dart';
import 'package:core_flutter_exam_2/View/listing_screen.dart';
import 'package:core_flutter_exam_2/View/product_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'product',
      routes: {
        '/': (context) => const HomePage(),
        'listing': (context) => const ListingScreen(),
        'product': (context) => const ProductScreen(),
        'cart': (context) => const CartScreen(),
      },
    );
  }
}
