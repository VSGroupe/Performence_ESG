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
        // Cadre principal
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 236, 153, 45),
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
                "SOCIAL",
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

        const SizedBox(height: 20),

        // Bouton en-dessous (optionnel)
      ],
    );
  }
}
