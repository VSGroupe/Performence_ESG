import 'package:flutter/material.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Index_de_Reporting_bouton.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Methodologie_De_Reporting_bouton.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Publication_bouton.dart';

class BoutonGroupe2 extends StatefulWidget {
  const BoutonGroupe2({super.key});

  @override
  State<BoutonGroupe2> createState() => _BoutonGroupe2State();
}

class _BoutonGroupe2State extends State<BoutonGroupe2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // const SizedBox(width: 30),
          // SizedBox(child: StrategieDdBouton()),

          const SizedBox(width: 30),
          SizedBox(child: IndexDeReportingBouton()),
          const SizedBox(width: 30),
          SizedBox(child: MethodologieDeReportingBouton()),
          // const SizedBox(width: 30),
          // SizedBox(child: AvisDeVerificationIndependantBouton()),

          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
