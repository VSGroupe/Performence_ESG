import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageBiodiversit%C3%A9/bidodiversit%C3%A9.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageClimat/climat.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageEnergie/energie.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PagePollution/pollution.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageRessourceEaux/ressource.dart';
import '../INFORMATIONS GENERALES/PagePrincipeGeneraux/principeGenereaux.dart';
import 'PageRessourcesEconomie/ressourceEconomique.dart';

class CadreEnvironnemntNew extends StatelessWidget {
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
                    "ENVIRONNEMENT",
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
                          ClimatnewButton(),
                          const SizedBox(height: 10),
                          PollutionnewButton(),
                          const SizedBox(height: 10),
                          RessourceEauxnewButton(),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          BiodiversitenewButton(),
                          const SizedBox(height: 10),
                          RessourceEconomienewButton(),
                          const SizedBox(height: 10),
                          EnergienewButton(),
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
                color:
                    Color.fromARGB(255, 92, 167, 69), // Couleur de la bordure
              ),
            ),

            // Deuxième conteneur rouge
            Positioned(
              top: 5,
              left: 4,
              child: Container(
                width: 199,
                height: 3,
                color: const Color.fromARGB(255, 92, 167, 69),
              ),
            ),

            // Troisième conteneur rouge
            Positioned(
              top: 10,
              left: 0,
              child: Container(
                width: 198,
                height: 3,
                color: const Color.fromARGB(255, 92, 167, 69),
              ),
            ),
            Positioned(
              top: 15,
              left: 0,
              child: Container(
                width: 194,
                height: 3,
                color: const Color.fromARGB(255, 92, 167, 69),
              ),
            ),
            Positioned(
              top: 20,
              left: 0,
              child: Container(
                width: 190,
                height: 3,
                color: const Color.fromARGB(255, 92, 167, 69),
              ),
            ),
            Positioned(
              top: 25,
              left: 0,
              child: Container(
                width: 186,
                height: 3,
                color: const Color.fromARGB(255, 92, 167, 69),
              ),
            ),
            Positioned(
              top: 30,
              left: 0,
              child: Container(
                width: 182,
                height: 3,
                color: const Color.fromARGB(255, 92, 167, 69),
              ),
            ),
            Positioned(
              top: 35,
              left: 0,
              child: Container(
                width: 178,
                height: 3,
                color: const Color.fromARGB(255, 92, 167, 69),
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              child: Container(
                width: 174,
                height: 3,
                color: const Color.fromARGB(255, 92, 167, 69),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
