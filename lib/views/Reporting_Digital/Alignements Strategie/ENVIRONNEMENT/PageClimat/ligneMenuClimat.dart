import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageClimat/BoutonCarbone.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageClimat/BoutonGES.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageClimat/BoutonNeutralit%C3%A9.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageClimat/BoutonTemp%C3%A9rature.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PagePollution/BoutonAir.dart';

class BoutonGroupeClimat extends StatefulWidget {
  const BoutonGroupeClimat({super.key});

  @override
  State<BoutonGroupeClimat> createState() => _BoutonGroupeClimatState();
}

class _BoutonGroupeClimatState extends State<BoutonGroupeClimat> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // const SizedBox(width: 60),
          // SizedBox(child: ContextBouton()),

          SizedBox(child: GesBouton()),
          const SizedBox(width: 60),
          SizedBox(child: NeutraliteBouton()),
          const SizedBox(width: 60),
          SizedBox(child: CarbonneBouton()),
          const SizedBox(width: 60),
          SizedBox(child: TemperatureBouton()),
        ],
      ),
    );
  }
}
