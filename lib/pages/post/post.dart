import 'dart:ui';
import 'package:flutter/material.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image de fond
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'), // Image de fond
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Effet de flou
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), // Appliquer le flou
            child: Container(
              color: Colors.black.withOpacity(0.2), // Couche semi-transparente
            ),
          ),
          // Contenu de la page
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Bouton retour
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 20),
                // Formulaire
                Expanded(
                  child: SingleChildScrollView(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 5,
                      color: Colors.white.withOpacity(0.9), // Transparence du fond
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            // Zone pour ajouter une image (plus grande)
                            Container(
                              height: 250, // Augmenté pour une zone plus grande
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF4CBC7),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_a_photo,
                                    size: 60, // Plus grand pour s'adapter
                                    color: Colors.black54,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Ajouter une photo",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            // Champs du formulaire
                            const CustomTextField(
                              label: "Description de votre produit",
                            ),
                            const CustomTextField(
                              label: "Prix",
                            ),
                            const CustomTextField(
                              label: "Marque",
                            ),
                            const CustomTextField(
                              label: "Taille",
                            ),
                            const CustomTextField(
                              label: "État",
                            ),
                            const CustomTextField(
                              label: "Garantie/Date d’acquisition",
                            ),
                            const SizedBox(height: 20),
                            // Bouton de validation
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color(0xFFA34961), // Couleur du bouton
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  // Action lors de la validation
                                },
                                child: const Text(
                                  "Validation",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget réutilisable pour les champs de texte
class CustomTextField extends StatelessWidget {
  final String label;

  const CustomTextField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Color(0xFFA34961)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFA34961)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
