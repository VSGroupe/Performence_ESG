import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GouvernanceBouton extends StatefulWidget {
  @override
  _GouvernanceBoutonState createState() => _GouvernanceBoutonState();
}

class _GouvernanceBoutonState extends State<GouvernanceBouton> {
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
                      return const Color.fromARGB(255, 14, 13, 114);
                    },
                  ),
                ),
                child: PopupMenuButton<String>(
                  key: _menuKey,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("Organisation"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Visions, Missions & Valeurs"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text(
                          "Politique DD, Ethiques, Conformités, DUEdiligence"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Feuille de route"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Enjeux significatifs"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text(
                          "Adhesion, initiative volontaire & Influence de reseaux"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Alignement et schéma de la strategie"),
                      onTap: () {},
                    ),
                  ],
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'Gouvernance et strategie DD',
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
                    'Gouvernance et strategie DD',
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
              'Organisation',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245)),
            ),
            children: <Widget>[
              ListTile(
                title: const Text("Conseil d'administration"),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: const Text("Organigramme général"),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: const Text("Structure DD"),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          child: Text("Visions, Missions & Valeurs",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {
            context.go('/Accueil_Reporting/Visions_missions_valeurs');
          },
        ),
        PopupMenuItem(
          child: Text("Politique DD, Ethiques, Conformités, DUEdiligence",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {
            context.go('/Accueil_Reporting/Ethique_Conformite_Duediligeance');
          },
        ),
        PopupMenuItem(
          child: Text("Feuille de route",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text("Enjeux significatifs",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text("Adhesion, initiative volontaire & Influence de reseaux",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text("Alignement et schéma de la strategie",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
      ],
    );
  }
}
