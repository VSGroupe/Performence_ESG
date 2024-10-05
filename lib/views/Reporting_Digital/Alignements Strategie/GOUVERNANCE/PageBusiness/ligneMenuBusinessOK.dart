import 'package:flutter/material.dart';
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

class BoutonGroupeBusiness extends StatefulWidget {
  const BoutonGroupeBusiness({super.key});

  @override
  State<BoutonGroupeBusiness> createState() => _BoutonGroupeBusinessState();
}

class _BoutonGroupeBusinessState extends State<BoutonGroupeBusiness> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // const SizedBox(width: 30),
          // SizedBox(child: ContextBouton()),

          SizedBox(
            child: VisionBouton(),
          ),
          const SizedBox(width: 70),
          SizedBox(child: MissionBouton()),
          const SizedBox(width: 30),
          SizedBox(child: ValeursBouton()),
          const SizedBox(width: 30),
          SizedBox(child: MarcheBouton()),
          const SizedBox(width: 30),
          SizedBox(child: ActiviteBouton()),
          const SizedBox(width: 30),
          SizedBox(child: ProduitBouton()),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
