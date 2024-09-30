import 'package:flutter/material.dart';

class TableauDeBordPage extends StatefulWidget {
  const TableauDeBordPage({super.key});

  @override
  State<TableauDeBordPage> createState() => _TableauDeBordPageState();
}

class _TableauDeBordPageState extends State<TableauDeBordPage> {
  bool isDrawerOpen =
      true; // Variable pour suivre l'état du Drawer (ouvert/fermé)
  String selectedPage = 'Tableau de bord'; // Page sélectionnée actuellement

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
                    _buildListTile('assets/icons/home.png', 'Accueil'),
                    _buildListTile('assets/icons/table.png', 'Tableau de bord'),
                    _buildListTile(
                        'assets/icons/performance.png', 'Performence'),
                    _buildListTile(
                        'assets/icons/monitoring.png', 'Suivie des données'),
                    _buildListTile('assets/icons/profil.png', 'Profile'),
                    _buildListTile('assets/icons/admin.png', 'Paramètres'),
                    _buildListTile('assets/icons/hisorique.png', 'Historique'),
                    _buildListTile('assets/images/salut.png', 'Support client'),
                    _buildListTile(
                        'assets/images/return.png', 'Acceuil Pilotage'),
                  ],
                ),
              ),
            ),
          ),

          // Partie droite avec le contenu du tableau de bord
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tableau de bord',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Ajoute ici les widgets spécifiques à ton tableau de bord
                  Text('Statistiques récentes', style: TextStyle(fontSize: 20)),
                  // Tu peux ajouter des graphiques, des cartes, des tableaux, etc.
                  Container(
                    height: 200,
                    color: Colors.grey[200], // Exemple de graphique
                    child: Center(
                      child: Text(
                        'Graphique 1',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    color: Colors.grey[200], // Exemple de graphique
                    child: Center(
                      child: Text(
                        'Graphique 2',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Méthode pour créer les ListTiles avec des images personnalisées
  Widget _buildListTile(String iconPath, String title) {
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
      },
    );
  }
}
