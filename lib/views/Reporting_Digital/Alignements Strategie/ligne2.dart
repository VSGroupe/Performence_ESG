import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/SOCIAL/cardSocial.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/cardStrategie.dart';

import 'GOUVERNANCE/cardGouvernance.dart';
import 'INFORMATIONS GENERALES/cardInforation.dart';

class Ligne2New extends StatefulWidget {
  const Ligne2New({super.key});

  @override
  State<Ligne2New> createState() => _Ligne2NewState();
}

class _Ligne2NewState extends State<Ligne2New> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 180),
        CadreStrategieNew(),
        SizedBox(width: 50),
        CadreSocialNew(),
      ],
    );
  }
}
