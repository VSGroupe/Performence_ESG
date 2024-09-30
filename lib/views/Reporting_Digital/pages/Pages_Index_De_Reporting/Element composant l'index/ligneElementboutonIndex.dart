import 'package:flutter/material.dart';

import 'crsd.dart';
import 'gri.dart';
import 'gspnr.dart';
import 'odd.dart';

class BoutonIndex extends StatefulWidget {
  const BoutonIndex({super.key});

  @override
  State<BoutonIndex> createState() => _BoutonIndexState();
}

class _BoutonIndexState extends State<BoutonIndex> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 30),
          SizedBox(child: GriBouton()),
          const SizedBox(width: 30),
          SizedBox(child: OddBouton()),
          const SizedBox(width: 30),
          SizedBox(child: GpsnrBouton()),
          const SizedBox(width: 30),
          SizedBox(child: CsrdBouton()),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
