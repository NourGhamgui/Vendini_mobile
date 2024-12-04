import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Déclaration du ScrollController pour contrôler le défilement
    ScrollController _scrollController = ScrollController();

    return Scaffold(
      body: Stack(
        children: [
          // Arrière-plan
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/back.png'), // Image d'arrière-plan
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenu principal
          SingleChildScrollView(
            controller:
                _scrollController, // Affecte le contrôleur au ScrollView
            child: Column(
              children: [
                const SizedBox(height: 50),
                // Image principale
                Image.asset(
                  'assets/images/bienvenu.jpg', // Image principale
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 20),
                // Texte de bienvenue
                Text(
                  "Bienvenue Sur Vendini",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffad492b),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Découvrez notre application de commerce d'articles occasion à prix réduits. "
                    "Achetez et vendez avec notre communauté Vendini.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF8B1A2E),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                    height: 100), // Ajoute un espace pour le défilement
                const SizedBox(height: 50), // Ajustez l'espace si nécessaire
                // Image de la flèche pour naviguer vers ThreePage
                // Arrow to navigate to the next page
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/four'); // Navigate to FourPage
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xFFB4004E),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Add space before the home button
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context); // Navigate back to the previous page
              },
              child: Image.asset(
                'assets/images/Home.png', // Path to your home image
                height: 30, // Adjust the height as needed
                width: 30, // Adjust the width as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
