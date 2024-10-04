import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageBusiness/business.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageConduite/conduite.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageMotDirecteur/motDirigeant.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageOrganisation/organisation.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PagePartie/partie.dart';

class CadreGouvernanceNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
                    "GOUVERNANCE",
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
                          MotduDirigeantnewButton(),
                          const SizedBox(height: 10),
                          OrganisationnewButton(),
                          const SizedBox(height: 40),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          ConduitenewButton(),
                          const SizedBox(height: 10),
                          PartieprenantenewButton(),
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
                    255, 179, 113, 39), // Couleur de la bordure
              ),
            ),

            // Deuxième conteneur rouge, légèrement en dessous du premier
            Positioned(
              top: 5, // Aligner un peu plus bas que le premier conteneur
              left: 4, // Aligner à gauche du cadre
              child: Container(
                width: 199, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color:
                    Color.fromARGB(255, 179, 113, 39), // Couleur de la bordure
              ),
            ),

            // Troisième conteneur rouge, encore plus bas
            Positioned(
              top: 10, // Aligner encore plus bas que le deuxième conteneur
              left: 0, // Aligner à gauche du cadre
              child: Container(
                width: 198, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color:
                    Color.fromARGB(255, 179, 113, 39), // Couleur de la bordure
              ),
            ),
            Positioned(
              top: 15,
              left: 0,
              child: Container(
                width: 194,
                height: 3,
                color: Color.fromARGB(255, 179, 113, 39),
              ),
            ),
            Positioned(
              top: 20,
              left: 0,
              child: Container(
                width: 190,
                height: 3,
                color: Color.fromARGB(255, 179, 113, 39),
              ),
            ),
            Positioned(
              top: 25,
              left: 0,
              child: Container(
                width: 186,
                height: 3,
                color: Color.fromARGB(255, 179, 113, 39),
              ),
            ),
            Positioned(
              top: 30,
              left: 0,
              child: Container(
                width: 182,
                height: 3,
                color: Color.fromARGB(255, 179, 113, 39),
              ),
            ),
            Positioned(
              top: 35,
              left: 0,
              child: Container(
                width: 178,
                height: 3,
                color: Color.fromARGB(255, 179, 113, 39),
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              child: Container(
                width: 174,
                height: 3,
                color: Color.fromARGB(255, 179, 113, 39),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
