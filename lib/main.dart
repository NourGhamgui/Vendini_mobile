import 'package:flutter/material.dart';
import 'package:vendini/pages/history/history.dart';
import 'package:vendini/pages/home/home.dart';
import 'package:vendini/pages/panier/panier.dart';
import 'package:vendini/pages/post/post.dart';
import 'package:vendini/pages/info_produit/infprod.dart';
 // Import de la page historique

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vendini',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/addProduct': (context) => const AddProductPage(), // Route pour ajouter un produit
        '/history': (context) => const HistoryPage(), // Route pour la page historique
        '/cart': (context) => const PanierPage(),
        '/infoProduit': (context) => const Infprod(),
      },
      theme: ThemeData(
        primaryColor: const Color(0xFFE6B8AF),
        hintColor: const Color(0xFFA34961),
        fontFamily: 'Roboto',
      ),
    );
  }
}

