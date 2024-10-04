import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageBusiness/business.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageConduite/conduite.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageMotDirecteur/motDirigeant.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageOrganisation/organisation.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PagePartie/partie.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/SOCIAL/PageCommunaut%C3%A9/communaut%C3%A9.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/SOCIAL/PageConsommateurs/consomateur.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/SOCIAL/PageDroit/droit.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/SOCIAL/PagePersonnel/personnel.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/SOCIAL/PageTravail/travail.dart';

class CadreSocialNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Utilisation d'un Stack pour ajouter les bordures rouges et superposer la bordure et le contenu
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
                  // Titre dans le cadre
                  const Text(
                    "SOCIAL",
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
                          PersonnelnewButton(),
                          const SizedBox(height: 10),
                          TravailnewButton(),
                          const SizedBox(height: 10),
                          DroitnewButton(),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          CommunautenewButton(),
                          const SizedBox(height: 10),
                          ConsommateurnewButton(),
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
                width: 200, // Largeur de la bordure ajustable
                height: 3, // Hauteur de la bordure ajustable
                color: const Color.fromARGB(
                    255, 235, 165, 86), // Couleur de la bordure
              ),
            ),
            Positioned(
              top: 5, // Aligner légèrement en dessous du premier conteneur
              left: 4, // Aligner à gauche du cadre
              child: Container(
                width: 199,
                height: 3,
                color: const Color.fromARGB(255, 235, 165, 86),
              ),
            ),
            Positioned(
              top: 10, // Aligner encore plus bas
              left: 0,
              child: Container(
                width: 198,
                height: 3,
                color: const Color.fromARGB(255, 235, 165, 86),
              ),
            ),
            Positioned(
              top: 15,
              left: 0,
              child: Container(
                width: 194,
                height: 3,
                color: const Color.fromARGB(255, 235, 165, 86),
              ),
            ),
            Positioned(
              top: 20,
              left: 0,
              child: Container(
                width: 190,
                height: 3,
                color: const Color.fromARGB(255, 235, 165, 86),
              ),
            ),
            Positioned(
              top: 25,
              left: 0,
              child: Container(
                width: 186,
                height: 3,
                color: const Color.fromARGB(255, 235, 165, 86),
              ),
            ),
            Positioned(
              top: 30,
              left: 0,
              child: Container(
                width: 182,
                height: 3,
                color: const Color.fromARGB(255, 235, 165, 86),
              ),
            ),
            Positioned(
              top: 35,
              left: 0,
              child: Container(
                width: 178,
                height: 3,
                color: const Color.fromARGB(255, 235, 165, 86),
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              child: Container(
                width: 174,
                height: 3,
                color: const Color.fromARGB(255, 235, 165, 86),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
