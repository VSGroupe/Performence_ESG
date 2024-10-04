import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageEnjeux/enjeux.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageImpact/impact.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageMaterialit%C3%A9/materialite.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageRoad/road.dart';

class CadreStrategieNew extends StatelessWidget {
  final Color cadreColor;

  CadreStrategieNew(
      {this.cadreColor = const Color.fromARGB(255, 245, 139, 139)});

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
                    "STRATEGIE",
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
                      color: cadreColor.withOpacity(1),
                      border: Border.all(color: cadreColor, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Wrap(
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
                            const SizedBox(height: 75),
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
