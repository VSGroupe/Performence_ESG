import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageBiodiversit%C3%A9/bidodiversit%C3%A9.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageClimat/climat.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageEnergie/energie.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PagePollution/pollution.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageRessourceEaux/ressource.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageBusiness/business.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageConduite/conduite.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageMotDirecteur/motDirigeant.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageOrganisation/organisation.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PagePartie/partie.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/cardInforation.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/pageContexte/contextNew.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageEnjeux/enjeux.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageImpact/impact.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageMaterialit%C3%A9/materialite.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageRoad/road.dart';

import '../INFORMATIONS GENERALES/PagePrincipeGeneraux/principeGenereaux.dart';
import 'PageRessourcesEconomie/ressourceEconomique.dart';

class CadreEnvironnemntNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Cadre principal
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 82, 245, 61),
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
                "ENVIRONNEMENT",
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

        const SizedBox(height: 20),

        // Bouton en-dessous (optionnel)
      ],
    );
  }
}
