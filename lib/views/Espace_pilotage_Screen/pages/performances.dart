import 'package:flutter/material.dart';

class PerformancesPage extends StatefulWidget {
  const PerformancesPage({super.key});

  @override
  State<PerformancesPage> createState() => _PerformancesPageState();
}

class _PerformancesPageState extends State<PerformancesPage> {
  bool isDrawerOpen =
      true; // Variable pour suivre l'état du Drawer (ouvert/fermé)
  String selectedPage = 'Performence'; // Page sélectionnée actuellement

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

          // Partie droite avec le contenu de la page Performance
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Performance',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Statistiques de performance',
                      style: TextStyle(fontSize: 20)),
                  SizedBox(height: 20),
                  // Exemple de conteneur pour simuler un graphique
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Graphique de performance',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          // Simuler un graphique avec des barres
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildBar(100, 'Jan'),
                              _buildBar(80, 'Feb'),
                              _buildBar(90, 'Mar'),
                              _buildBar(70, 'Apr'),
                              _buildBar(60, 'May'),
                            ],
                          ),
                        ],
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

  // Méthode pour construire des barres pour simuler un graphique
  Widget _buildBar(double height, String label) {
    return Column(
      children: [
        Container(
          height: height, // Hauteur de la barre
          width: 20,
          color: Colors.blue,
        ),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}
