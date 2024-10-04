import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageBiodiversit%C3%A9/bidodiversit%C3%A9.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageClimat/climat.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageEnergie/energie.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PagePollution/pollution.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageRessourceEaux/ressource.dart';
import '../INFORMATIONS GENERALES/PagePrincipeGeneraux/principeGenereaux.dart';
import 'PageRessourcesEconomie/ressourceEconomique.dart';

class CadreEnvironnemntNew extends StatelessWidget {
  final Color cadreColor;

  CadreEnvironnemntNew(
      {this.cadreColor = const Color.fromARGB(255, 92, 167, 69)});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 2),
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

                  // Cadre autour des mini-boutons
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: cadreColor.withOpacity(0.7),
                      border: Border.all(color: cadreColor, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Wrap(
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
                  ),
                ],
              ),
            ),

            // Bordures décoratives
            Positioned(
              top: 0,
              left: 8,
              child: Container(
                width: 200,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 5,
              left: 4,
              child: Container(
                width: 199,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 10,
              left: 0,
              child: Container(
                width: 198,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 15,
              left: 0,
              child: Container(
                width: 194,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 20,
              left: 0,
              child: Container(
                width: 190,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 25,
              left: 0,
              child: Container(
                width: 186,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 30,
              left: 0,
              child: Container(
                width: 182,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 35,
              left: 0,
              child: Container(
                width: 178,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              child: Container(
                width: 174,
                height: 3,
                color: cadreColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
