import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageConformit%C3%A9/conformit%C3%A9.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageDeclaration/declaration.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PagePerimetre/perim%C3%A8tre.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PagePrincipeGeneraux/principeGenereaux.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/pageContexte/contextNew.dart';

class CadreInfotmationNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Utilisation d'un Stack pour ajouter les bordures rouges et superposer la bordure et le contenu
        Stack(
          children: [
            // Cadre principal
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
                  // Titre dans le cadre
                  const Text(
                    "INFORMATIONS GENERALES",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Mini-cadres (boutons)
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Column(
                        children: [
                          ContextnewButton(),
                          const SizedBox(height: 10),
                          PrincipeGenereauxnewButton(),
                          const SizedBox(height: 10),
                          DeclarationnewButton(),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          PerimtrenewButton(),
                          const SizedBox(height: 10),
                          ConformitenewButton(),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Ajout des mêmes conteneurs rouges que dans l'exemple précédent
            Positioned(
              top: 0, // Aligner en haut du cadre
              left: 8, // Aligner à gauche du cadre
              child: Container(
                width: 150, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color:
                    Color.fromARGB(255, 116, 150, 243), // Couleur de la bordure
              ),
            ),
            Positioned(
              top: 5, // Aligner légèrement en dessous du premier conteneur
              left: 4, // Aligner à gauche du cadre
              child: Container(
                width: 149,
                height: 3,
                color: Color.fromARGB(255, 116, 150, 243),
              ),
            ),
            Positioned(
              top: 10, // Aligner encore plus bas
              left: 0,
              child: Container(
                width: 148,
                height: 3,
                color: Color.fromARGB(255, 116, 150, 243),
              ),
            ),
            Positioned(
              top: 15,
              left: 0,
              child: Container(
                width: 144,
                height: 3,
                color: Color.fromARGB(255, 116, 150, 243),
              ),
            ),
            Positioned(
              top: 20,
              left: 0,
              child: Container(
                width: 140,
                height: 3,
                color: Color.fromARGB(255, 116, 150, 243),
              ),
            ),
            Positioned(
              top: 25,
              left: 0,
              child: Container(
                width: 136,
                height: 3,
                color: Color.fromARGB(255, 116, 150, 243),
              ),
            ),
            Positioned(
              top: 30,
              left: 0,
              child: Container(
                width: 132,
                height: 3,
                color: Color.fromARGB(255, 116, 150, 243),
              ),
            ),
            Positioned(
              top: 35,
              left: 0,
              child: Container(
                width: 128,
                height: 3,
                color: Color.fromARGB(255, 116, 150, 243),
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              child: Container(
                width: 124,
                height: 3,
                color: Color.fromARGB(255, 116, 150, 243),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
