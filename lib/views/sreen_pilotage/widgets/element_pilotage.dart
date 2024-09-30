import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:performence_esg/views/sreen_pilotage/modules/overview_card.dart';
import 'package:performence_esg/views/sreen_pilotage/widgets/content_pilotage_home.dart';

class ElementPilotageNew extends StatefulWidget {
  const ElementPilotageNew({super.key});

  @override
  State<ElementPilotageNew> createState() => _ElementPilotageNewState();
}

class _ElementPilotageNewState extends State<ElementPilotageNew> {
  double mheight = 150;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 4.0,
          children: [
            // Consolidation Groupe
            const SizedBox(
              height: 200,
              width: 300,
              child: OverviewCard(
                title: "Grang Groupe",
                titleColor: Color(0xffb66600),
                children: [
                  EntityTextButton(
                    title: "GROUPE 1",
                    color: Color(0xffb66600),
                    entiteID: "comex",
                  ),
                  EntityTextButton(
                    title: "GROUPE 2",
                    color: Color(0xffb66600),
                    entiteID: "groupe-sifca",
                  ),
                ],
              ),
            ),
            // Oléagineux
            SizedBox(
              height: 200,
              width: 300,
              child: OverviewCard(
                title: "Usine 1",
                titleColor: Colors.red,
                children: [
                  EntityTextButton(
                    title: "Site 3",
                    color: Colors.red,
                    entiteID: "golden-sifca",
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                  EntityTextButton(
                    title: "Site 4",
                    color: Colors.red,
                    entiteID: "thsp",
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                  EntityTextButton(
                    title: "Site 5",
                    color: Colors.red,
                    entiteID: "sania",
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                  EntityTextButton(
                    title: "Site 6",
                    color: Colors.red,
                    entiteID: "mopp",
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                ],
              ),
            ),
            // Catouchou Naturel
            SizedBox(
              height: 200,
              width: 300,
              child: OverviewCard(
                title: "Usine 2",
                titleColor: Colors.green,
                children: [
                  EntityTextButton(
                    title: "Site 7",
                    color: Colors.green,
                    entiteID: "golden-sifca",
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                  EntityTextButton(
                    title: "Site 8",
                    color: Colors.green,
                    entiteID: "thsp",
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                  EntityTextButton(
                    title: "Site 9",
                    color: Colors.green,
                    entiteID: "sania",
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                ],
              ),
            ),
            // Sucre
            SizedBox(
              height: 200,
              width: 300,
              child: OverviewCard(
                title: "Usine 3",
                titleColor: Colors.blue,
                children: [
                  EntityTextButton(
                    title: "Site 8",
                    color: Colors.blue,
                    entiteID: "golden-sifca",
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                  EntityTextButton(
                    title: "Site 9",
                    color: Colors.blue,
                    entiteID: "thsp",
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                  EntityTextButton(
                    title: "Site 10",
                    color: Colors.blue,
                    entiteID: "sania",
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                  EntityTextButton(
                    title: "Site 11",
                    color: Colors.blue,
                    entiteID: "sania",
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                ],
              ),
            ),
            // Consolidaltion Filières
            SizedBox(
              height: mheight,
              width: 300,
              child: OverviewCard(
                title: "Consolidation de secteur",
                titleColor: Color(0xffb66600),
                children: [
                  EntityTextButton(
                    title: "Usine 1",
                    entiteID: 'oleagineux',
                    color: Colors.red,
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                  EntityTextButton(
                    title: "Usine 2",
                    entiteID: 'sucre',
                    color: Colors.blue,
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                  EntityTextButton(
                    title: "Usine 3",
                    entiteID: 'caoutchouc-naturel',
                    color: Colors.green,
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                ],
              ),
            ),
            // SIFCA HOLDING
            SizedBox(
              height: mheight,
              width: 300,
              child: OverviewCard(
                title: "Holding",
                titleColor: Colors.grey,
                children: [
                  EntityTextButton(
                    title: 'Holding',
                    entiteID: 'sifca-holding',
                    color: Colors.grey,
                    onTap: () {
                      context.go('/Pilotage/espace/Accueil');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
