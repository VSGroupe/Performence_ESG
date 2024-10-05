import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageOrganisation/BoutonConseilAdministration.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageOrganisation/BoutonOrganigramme.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageOrganisation/BoutonStrategie.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageConformit%C3%A9/BoutonAvis.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageConformit%C3%A9/BoutonVerification.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageDeclaration/BoutonAlignement.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageDeclaration/BoutonDeclarationConf.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageDeclaration/BoutonPrincipe.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Page_Gouvernace/Conseil_administration.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Busines_model_bouton.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Donn%C3%A9es_De_Perfomances_ESG_bouton.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Gouvernance_bouton.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Impact_Risque_opportunit%C3%A9_bouton.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Partie_prenante_bouton.dart';

class BoutonGroupeOrganisation extends StatefulWidget {
  const BoutonGroupeOrganisation({super.key});

  @override
  State<BoutonGroupeOrganisation> createState() =>
      _BoutonGroupeOrganisationState();
}

class _BoutonGroupeOrganisationState extends State<BoutonGroupeOrganisation> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // const SizedBox(width: 30),
          // SizedBox(child: ContextBouton()),

          SizedBox(
            child: ConseilBouton(),
          ),
          const SizedBox(width: 60),
          SizedBox(child: OrganigrammeBouton()),
          const SizedBox(width: 60),
          SizedBox(child: StrategieBouton()),
          const SizedBox(width: 60),
        ],
      ),
    );
  }
}
