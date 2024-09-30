import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/RigthSideReporting.dart';

class TableauDeBordReportingPageNew extends StatefulWidget {
  const TableauDeBordReportingPageNew({super.key});

  @override
  State<TableauDeBordReportingPageNew> createState() =>
      _TableauDeBordReportingPageNewState();
}

class _TableauDeBordReportingPageNewState
    extends State<TableauDeBordReportingPageNew> {
  bool isDrawerOpen =
      true; // Variable pour suivre l'état du Drawer (ouvert/fermé)
  String selectedPage = 'Accueil'; // Page sélectionnée actuellement

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(isDrawerOpen ? Icons.arrow_back : Icons.menu),
          onPressed: () {
            setState(() {
              isDrawerOpen = !isDrawerOpen; // Inverse l'état du Drawer
            });
          },
        ),
      ),
      body: Row(
        children: [
          // Drawer rétractable avec des images personnalisées
          AnimatedContainer(
            duration: const Duration(milliseconds: 300), // Durée de l'animation
            width: isDrawerOpen ? 250 : 70, // Largeur dynamique selon l'état
            padding:
                const EdgeInsets.only(top: 10.0), // Espace de 10 pixels en haut
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(30), // Coins arrondis en haut.
                bottom: Radius.circular(30), // Coins arrondis en bas.
              ),
              child: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    _buildListTile('assets/icons/home.png', 'Accueil',
                        '/Pilotage/espace/Accueil'),
                    _buildListTile('assets/icons/home.png', 'Controlleur',
                        '/Pilotage/espace/Accueil'),
                    _buildListTile('assets/icons/profil.png', 'Profile',
                        '/Pilotage/espace/Profile'),
                    _buildListTile('assets/icons/admin.png', 'Paramètres',
                        '/Pilotage/espace/Parametres'),
                    _buildListTile('assets/icons/hisorique.png', 'Historique',
                        '/Pilotage/espace/Historique'),
                    _buildListTile('assets/images/return.png', 'Deconnexion',
                        '/Connexion'),
                  ],
                ),
              ),
            ),
          ),

          // RightSide prendra le reste de l'espace
          const Expanded(
            child: RightSideReporting(),
          ),
        ],
      ),
    );
  }

  // Méthode pour créer les ListTiles avec des images personnalisées et navigation
  Widget _buildListTile(String iconPath, String title, String route) {
    return ListTile(
      leading: Image.asset(
        iconPath,
        width: 30, // Taille de l'image
        height: 30,
      ),
      title: isDrawerOpen
          ? Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold, // Texte en gras
                color: selectedPage == title
                    ? Colors.blue // Couleur bleue si la page est sélectionnée
                    : Colors.black, // Couleur noire sinon
              ),
            )
          : null, // Cache le texte si Drawer est fermé
      onTap: () {
        setState(() {
          selectedPage = title; // Met à jour la page sélectionnée
        });
        context.go(route); // Navigue vers la route correspondante
      },
    );
  }
}
