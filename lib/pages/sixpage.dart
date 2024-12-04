import 'package:flutter/material.dart';

class SixPage extends StatelessWidget {
  const SixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back.png'), // Background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Vertical centering
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Horizontal centering
              children: [
                // Logo de l'application
                Image.asset(
                  'assets/images/logoVendini.png', // Replace with your logo
                  height: 200,
                ),
                const SizedBox(height: 20), // Space between logo and buttons

                // Subtitle
                Text(
                  'Connectez-vous avec votre adresse mail électronique.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffad492b),
                  ),
                ),
                const SizedBox(height: 30), // Space before buttons

                // Button for Gmail login
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF9B2A2A), // Button color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: Size(
                        200, 50), // Set minimum width for equal button sizes
                  ),
                  onPressed: () {
                    // Action for Gmail login
                  },
                  child: const Text(
                    'Connexion avec Gmail',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffd56464),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Space between buttons

                // Button to create an account
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF9B2A2A), // Button color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: Size(
                        200, 50), // Set minimum width for equal button sizes
                  ),
                  onPressed: () {
                    // Action to create an account
                  },
                  child: const Text(
                    'Créer un compte',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffd56464),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Home button image at the bottom left
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
