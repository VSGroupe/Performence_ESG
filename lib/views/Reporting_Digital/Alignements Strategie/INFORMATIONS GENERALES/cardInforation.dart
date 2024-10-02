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
        // Bouton au-dessus (optionnel)

        // Cadre principal
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blue[100],
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
                "INFORMATIONS GENERALES",
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

        const SizedBox(height: 20),

        // Bouton en-dessous (optionnel)
      ],
    );
  }
}
