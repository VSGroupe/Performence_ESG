import 'package:flutter/material.dart';

import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageEnjeux/enjeux.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageImpact/impact.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageMaterialit%C3%A9/materialite.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageRoad/road.dart';

class CadreStrategieNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Utilisation d'un Stack pour superposer la bordure et le contenu
        Stack(
          children: [
            // Contenu du cadre
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(0.5), // Couleur de l'ombre noire
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 2), // Décalage de l'ombre
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "STRATEGIE",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Column(
                        children: [
                          ImpactnewButton(),
                          const SizedBox(height: 10),
                          MaterialitenewButton(),
                          const SizedBox(height: 40),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          EnjeuxmaterielnewButton(),
                          const SizedBox(height: 10),
                          RoadmappnewButton(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Premier conteneur rouge
            Positioned(
              top: 0, // Aligner en haut du cadre
              left: 8, // Aligner à gauche du cadre
              child: Container(
                width: 200, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color: const Color.fromARGB(
                    255, 245, 139, 139), // Couleur de la bordure
              ),
            ),

            // Deuxième conteneur rouge, légèrement en dessous du premier
            Positioned(
              top: 5, // Aligner un peu plus bas que le premier conteneur
              left: 4, // Aligner à gauche du cadre
              child: Container(
                width: 199, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color: const Color.fromARGB(
                    255, 245, 139, 139), // Couleur de la bordure
              ),
            ),

            // Troisième conteneur rouge, encore plus bas
            Positioned(
              top: 10, // Aligner encore plus bas que le deuxième conteneur
              left: 0, // Aligner à gauche du cadre
              child: Container(
                width: 198, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color: const Color.fromARGB(
                    255, 245, 139, 139), // Couleur de la bordure
              ),
            ),
            Positioned(
              top: 15, // Aligner encore plus bas que le deuxième conteneur
              left: 0, // Aligner à gauche du cadre
              child: Container(
                width: 194, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color: const Color.fromARGB(
                    255, 245, 139, 139), // Couleur de la bordure
              ),
            ),
            Positioned(
              top: 20, // Aligner encore plus bas que le deuxième conteneur
              left: 0, // Aligner à gauche du cadre
              child: Container(
                width: 190, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color: const Color.fromARGB(
                    255, 245, 139, 139), // Couleur de la bordure
              ),
            ),
            Positioned(
              top: 25, // Aligner encore plus bas que le deuxième conteneur
              left: 0, // Aligner à gauche du cadre
              child: Container(
                width: 186, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color: const Color.fromARGB(
                    255, 245, 139, 139), // Couleur de la bordure
              ),
            ),
            Positioned(
              top: 30, // Aligner encore plus bas que le deuxième conteneur
              left: 0, // Aligner à gauche du cadre
              child: Container(
                width: 182, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color: const Color.fromARGB(
                    255, 245, 139, 139), // Couleur de la bordure
              ),
            ),
            Positioned(
              top: 35, // Aligner encore plus bas que le deuxième conteneur
              left: 0, // Aligner à gauche du cadre
              child: Container(
                width: 178, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color: const Color.fromARGB(
                    255, 245, 139, 139), // Couleur de la bordure
              ),
            ),
            Positioned(
              top: 40, // Aligner encore plus bas que le deuxième conteneur
              left: 0, // Aligner à gauche du cadre
              child: Container(
                width: 174, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color: const Color.fromARGB(
                    255, 245, 139, 139), // Couleur de la bordure
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
