import 'package:flutter/material.dart';

import 'GOUVERNANCE/cardGouvernance.dart';
import 'INFORMATIONS GENERALES/cardInforation.dart';

class Ligne1New extends StatefulWidget {
  const Ligne1New({super.key});

  @override
  State<Ligne1New> createState() => _Ligne1NewState();
}

class _Ligne1NewState extends State<Ligne1New> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 180),
        CadreInfotmationNew(),
        SizedBox(width: 50),
        CadreGouvernanceNew(),
      ],
    );
  }
}
