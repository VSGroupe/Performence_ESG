import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/actualit%C3%A9/bouton1.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/actualit%C3%A9/bouton2..dart';

class ActuliteElement extends StatelessWidget {
  const ActuliteElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(width: 200),
          Column(
            children: [
              Image.asset(
                'assets/images/Actualité 1.png',
                width: 600,
              ),
              const Text(
                "Salon International de",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "l’Agriculture (SIA) 2024 :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "conférence sur la traçabilité",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "des produits SIFCA",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(child: firstButton()),
            ],
          ),
          const SizedBox(width: 90),
          Column(
            children: [
              Image.asset(
                'assets/images/Actualité 2.png',
                width: 600,
              ),
              const Text(
                "60ème édition du Salon International de",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "l’Agriculture: SIFCA présent",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "pour la 8ème année",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "consécutive",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(child: secondButton()),
            ],
          ),
        ],
      ),
    );
  }
}
