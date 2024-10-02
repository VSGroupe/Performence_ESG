import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageBusiness/business.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageConduite/conduite.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageMotDirecteur/motDirigeant.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageOrganisation/organisation.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PagePartie/partie.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageEnjeux/enjeux.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageImpact/impact.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageMaterialit%C3%A9/materialite.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageRoad/road.dart';

import '../INFORMATIONS GENERALES/PagePrincipeGeneraux/principeGenereaux.dart';

class CadreStrategieNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Cadre principal
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 233, 132, 125),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              // Titre dans le cadre
              const Text(
                "STRATEGIE",
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              const SizedBox(height: 20),

              // Mini-cadres (boutons)
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

        const SizedBox(height: 20),

        // Bouton en-dessous (optionnel)
      ],
    );
  }
}
