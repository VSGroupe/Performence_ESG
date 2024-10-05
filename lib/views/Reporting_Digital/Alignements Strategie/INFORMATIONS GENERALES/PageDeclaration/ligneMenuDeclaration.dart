import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageDeclaration/BoutonAlignement.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageDeclaration/BoutonDeclarationConf.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageDeclaration/BoutonPrincipe.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Busines_model_bouton.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Donn%C3%A9es_De_Perfomances_ESG_bouton.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Gouvernance_bouton.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Impact_Risque_opportunit%C3%A9_bouton.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Partie_prenante_bouton.dart';

class BoutonGroupeConformite extends StatefulWidget {
  const BoutonGroupeConformite({super.key});

  @override
  State<BoutonGroupeConformite> createState() => _BoutonGroupeConformiteState();
}

class _BoutonGroupeConformiteState extends State<BoutonGroupeConformite> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // const SizedBox(width: 30),
          // SizedBox(child: ContextBouton()),
          const SizedBox(width: 30),
          SizedBox(
            child: DeclarationConfBouton(),
          ),
          const SizedBox(width: 30),
          SizedBox(child: AlignemetInternationnauxBouton()),
          const SizedBox(width: 30),
          SizedBox(child: PrincipeExigenceBouton()),

          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
