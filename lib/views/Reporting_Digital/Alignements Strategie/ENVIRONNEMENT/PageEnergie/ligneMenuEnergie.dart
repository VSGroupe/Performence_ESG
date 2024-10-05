import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageClimat/BoutonCarbone.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageEnergie/BoutonCarboneNeutre.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageEnergie/BoutonConsommationType.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageEnergie/BoutonEnergieRenouvelable.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageEnergie/BoutonFlotte.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageEnergie/BoutonTransition.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageBusiness/BoutonActivit%C3%A9.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageBusiness/BoutonMarch%C3%A9.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageBusiness/BoutonMission.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageBusiness/BoutonProduits.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageBusiness/BoutonValeurs.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageBusiness/BoutonVision.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageConformit%C3%A9/BoutonAvis.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageConformit%C3%A9/BoutonVerification.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageDeclaration/BoutonAlignement.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageDeclaration/BoutonDeclarationConf.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageDeclaration/BoutonPrincipe.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Busines_model_bouton.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Donn%C3%A9es_De_Perfomances_ESG_bouton.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Gouvernance_bouton.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Impact_Risque_opportunit%C3%A9_bouton.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Partie_prenante_bouton.dart';

class BoutonGroupeEnergie extends StatefulWidget {
  const BoutonGroupeEnergie({super.key});

  @override
  State<BoutonGroupeEnergie> createState() => _BoutonGroupeEnergieState();
}

class _BoutonGroupeEnergieState extends State<BoutonGroupeEnergie> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // const SizedBox(width: 30),
          // SizedBox(child: ContextBouton()),

          SizedBox(child: ConsommationTypeBouton()),
          const SizedBox(width: 60),
          SizedBox(child: FloteBouton()),
          const SizedBox(width: 60),
          SizedBox(child: CarbonneNeutreBouton()),
          const SizedBox(width: 60),
          SizedBox(child: TransitionEnergetiqueBouton()),
          const SizedBox(width: 60),
          SizedBox(child: EnergieRenouvelableBouton()),
        ],
      ),
    );
  }
}
