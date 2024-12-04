import 'package:flutter/material.dart';



class Infprod extends StatelessWidget {
  const Infprod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // *** Image de fond de l'écran ***
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/background.png'), // Remplacez 'image' par le chemin de votre image de fond
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // *** Carte du produit avec l'image et les informations à droite ***
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // *** Image du produit ***
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                '/assets/images/4.png', // Remplacez par votre image produit
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 12),
                            // *** Informations (Titre, Vendeur, Numéro, Étoiles) à droite de l'image ***
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // *** Titre du produit ***
                                  const Text(
                                    'Pyjama d’été',
                                    style: TextStyle(
                                      fontFamily: 'Frank Ruhl Libre',
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFB80D75),
                                    ),
                                  ),
                                  const SizedBox(height: 8),

                                  // *** Informations sur le vendeur (photo et nom + numéro) ***
                                  Row(
                                    children: [
                                      // *** Photo du vendeur ***
                                      const CircleAvatar(
                                        radius: 20,
                                        backgroundImage: AssetImage(
                                            'assets/images/girl.png'), // Remplacez par l'image du vendeur
                                      ),
                                      const SizedBox(width: 8),

                                      // *** Nom du vendeur et numéro de téléphone ***
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'nour vendeuse',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            '+216 52 237 915',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[700],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),

                                  // *** Évaluation (étoiles) ***
                                  Row(
                                    children: List.generate(4, (index) {
                                      return const Icon(Icons.star,
                                          color: Colors.yellow, size: 20);
                                    })
                                      ..add(
                                        const Icon(Icons.star_border,
                                            color: Colors.yellow, size: 20),
                                      ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // *** Informations relatives à l'article ***
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(
                            0.9), // Transparence pour voir l'arrière-plan
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Titre : Informations relatives à l’article
                          Text(
                            'Informations relatives à l’article',
                            style: TextStyle(
                              fontFamily: 'Frank Ruhl Libre',
                              fontSize: 18, // Taille du titre augmentée
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFB80D75), // Couleur personnalisée
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Espace entre le titre et les détails

                          // Les détails sous forme de colonnes bien organisées
                          Text(
                            'Catégorie: vêtements\n'
                            'Taille: S\n'
                            'Couleur: beige\n'
                            'Etat: en bon état\n'
                            'Marque: (sans marque)',
                            style: TextStyle(
                              fontFamily: 'Frank Ruhl Libre',
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // *** Section Prix ***
                    Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(
                            0.9), // Transparence pour voir l'arrière-plan
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Prix',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '30 TND',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 30),

                    // *** Bouton Ajouter au panier ***
                    ElevatedButton(
                      onPressed: () {
                        // Action du bouton
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(
                            0xFFB80D75), // Utilisation de backgroundColor au lieu de 'primary'
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        elevation: 5,
                      ),
                      child: const Text(
                        'Ajouter au panier',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


