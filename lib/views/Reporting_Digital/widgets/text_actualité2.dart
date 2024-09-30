import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/actualit%C3%A9/page5.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/actualit%C3%A9/page7.dart';

class ActualiteElement2 extends StatelessWidget {
  const ActualiteElement2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(width: 200),
          Column(
            children: [
              Image.asset(
                'assets/images/Actualité 3.png',
                width: 600,
              ),
              const Text(
                "Encadrement Planteurs:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "PALMCI présente son projet CHAMP ECOLE",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(child: thirdButton()),
            ],
          ),
          const SizedBox(width: 90),
          Column(
            children: [
              Image.asset(
                'assets/images/Actualité 4.png',
                width: 600,
              ),
              const Text(
                "LEADERSHIP & STRATEGIE GENRE :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Dix Femmes du groupe SIFCA formées",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(child: fourthButton()),
            ],
          ),
        ],
      ),
    );
  }
}
