import 'package:flutter/material.dart';
import 'package:vendini/pages/fivepage.dart';
import 'package:vendini/pages/fourpage.dart';
import 'package:vendini/pages/history/history.dart';
import 'package:vendini/pages/home/home.dart';
import 'package:vendini/pages/panier/panier.dart';
import 'package:vendini/pages/post/post.dart';
import 'package:vendini/pages/info_produit/infprod.dart';
import 'package:vendini/pages/sixpage.dart';
import 'package:vendini/pages/splash_screen.dart';
import 'package:vendini/pages/threepage.dart';
import 'package:vendini/pages/vendeur.dart';
import 'package:vendini/pages/welcome_screen.dart';



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
      home: const Vendeur(),
      routes: {
        '/addProduct': (context) => const AddProductPage(), // Route pour ajouter un produit
        '/history': (context) => const HistoryPage(), // Route pour la page historique
        '/cart': (context) => const PanierPage(),
        '/infoProduit': (context) => const Infprod(),
         '/welcome': (context) => const WelcomeScreen(),
         '/three': (context) => const ThreePage(),
          '/four': (context) => const FourPage(),
          '/five': (context) => const FivePage(),
          '/six': (context) => const SixPage(),
       
      },
      theme: ThemeData(
        primaryColor: const Color(0xFFE6B8AF),
        hintColor: const Color(0xFFA34961),
        fontFamily: 'Roboto',
      ),
    );
  }
}

