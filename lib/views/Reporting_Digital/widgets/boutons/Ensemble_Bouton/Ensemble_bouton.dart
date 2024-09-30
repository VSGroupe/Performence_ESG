import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Busines_model_bouton.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Donn%C3%A9es_De_Perfomances_ESG_bouton.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Gouvernance_bouton.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Impact_Risque_opportunit%C3%A9_bouton.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Partie_prenante_bouton.dart';

class BoutonGroupe extends StatefulWidget {
  const BoutonGroupe({super.key});

  @override
  State<BoutonGroupe> createState() => _BoutonGroupeState();
}

class _BoutonGroupeState extends State<BoutonGroupe> {
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
            child: BusinessModelBouton(),
          ),
          const SizedBox(width: 30),
          SizedBox(child: GouvernanceBouton()),
          const SizedBox(width: 30),
          SizedBox(child: PartiePrenanteBouton()),
          const SizedBox(width: 30),
          SizedBox(child: ImpactRisqueOpportuniteBouton()),
          const SizedBox(width: 30),
          SizedBox(child: DonneesDePerfomancesEsgBouton()),
          // const SizedBox(width: 30),
          // SizedBox(child: AnalyseMaterialiteBouton()),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
