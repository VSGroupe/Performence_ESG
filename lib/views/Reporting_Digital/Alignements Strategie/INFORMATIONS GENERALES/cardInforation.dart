import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageConformit%C3%A9/conformit%C3%A9.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageDeclaration/declaration.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PagePerimetre/perim%C3%A8tre.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PagePrincipeGeneraux/principeGenereaux.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/pageContexte/contextNew.dart';

class CadreInfotmationNew extends StatelessWidget {
  final Color cadreColor;

  CadreInfotmationNew(
      {this.cadreColor = const Color.fromARGB(255, 49, 97, 230)});

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
                    "INFORMATIONS GENERALES",
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
                      color: cadreColor.withOpacity(0.5),
                      border: Border.all(color: cadreColor, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Wrap(
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
                  ),
                ],
              ),
            ),

            // Bordures décoratives, positionnées de manière fixe
            Positioned(
              top: 0,
              left: 8,
              child: Container(
                width: 150,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 5,
              left: 4,
              child: Container(
                width: 149,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 10,
              left: 0,
              child: Container(
                width: 148,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 15,
              left: 0,
              child: Container(
                width: 144,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 20,
              left: 0,
              child: Container(
                width: 140,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 25,
              left: 0,
              child: Container(
                width: 136,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 30,
              left: 0,
              child: Container(
                width: 132,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 35,
              left: 0,
              child: Container(
                width: 128,
                height: 3,
                color: cadreColor,
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              child: Container(
                width: 124,
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
