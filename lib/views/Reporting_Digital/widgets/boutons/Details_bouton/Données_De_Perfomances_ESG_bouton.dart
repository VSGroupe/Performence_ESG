import 'package:flutter/material.dart';

class DonneesDePerfomancesEsgBouton extends StatefulWidget {
  @override
  _DonneesDePerfomancesEsgBoutonState createState() =>
      _DonneesDePerfomancesEsgBoutonState();
}

class _DonneesDePerfomancesEsgBoutonState
    extends State<DonneesDePerfomancesEsgBouton> {
  bool _isHovered = false;
  GlobalKey _menuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
        _showMenu();
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: _isHovered
            ? ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return const Color.fromARGB(255, 62, 73, 83);
                    },
                  ),
                ),
                child: PopupMenuButton<String>(
                  key: _menuKey,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: const Text('Performence Sociale'),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: const Text("Performence Economique"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: const Text('Performence Environnemntale'),
                      onTap: () {},
                    ),
                  ],
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'Données Performence ESG',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            : ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return const Color.fromARGB(255, 14, 13, 114);
                    },
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    ' Données Performence ESG',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  void _showMenu() {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final Offset position =
        button.localToGlobal(Offset.zero, ancestor: overlay);
    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy + button.size.height,
        position.dx + button.size.width,
        position.dy + button.size.height * 2,
      ),
      items: [
        PopupMenuItem(
          child: ExpansionTile(
            title: const Text(
              'Performence Sociale',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245)),
            ),
            children: <Widget>[
              ListTile(
                title: const Text('Logement & cadre de vie'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: const Text('Conditions de travail'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: const Text('Communauté de développement local'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: const Text('Emploi'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          child: ExpansionTile(
            title: const Text(
              'Performence Economique',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245)),
            ),
            children: <Widget>[
              ListTile(
                title: const Text('Diversité des dirigeants'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: const Text('Conformité et certification'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          child: ExpansionTile(
            title: const Text(
              'Performence Environnementale',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245)),
            ),
            children: <Widget>[
              ListTile(
                title: const Text('Climat'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: const Text('Carbone'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: const Text('Biodiversité'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
              /* ListTile(
                title: const Text('Agriculture'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AgriculturePage()),
                  );
                },
                trailing: const Icon(Icons.arrow_forward),
              ), */
              ListTile(
                title: const Text('Eau & Energie'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: const Text('Gaz à effet de serre'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: const Text('Ressources & déchets'),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
