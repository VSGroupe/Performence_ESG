import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BusinessModelBouton extends StatefulWidget {
  @override
  _BusinessModelBoutonState createState() => _BusinessModelBoutonState();
}

class _BusinessModelBoutonState extends State<BusinessModelBouton> {
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
                      child: Text('Contexte'),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text('Mot du dirigeant'),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text('Marchés'),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Produits et services"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("réseaux"),
                      onTap: () {},
                    ),
                  ],
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'Business Model',
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
                    '            Business Model           ',
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
          child: Text('Contexte',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {
            context.go('/Accueil_Reporting/Contexte');
          },
        ),
        PopupMenuItem(
          child: Text('Mot du dirigeant',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {
            context.go('/Accueil_Reporting/Marches');
          },
        ),
        PopupMenuItem(
          child: Text('Marchés',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {
            context.go('/Accueil_Reporting/Mot_du_dirigeant');
          },
        ),
        PopupMenuItem(
          child: Text("Produits et services",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {
            context.go('/Accueil_Reporting/Produits_et_services');
          },
        ),
        PopupMenuItem(
          child: Text("Réseaux",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {
            context.go('/Accueil_Reporting/Reseaux');
          },
        ),
      ],
    );
  }
}
