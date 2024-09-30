import 'package:flutter/material.dart';

class MethodologieDeReportingBouton extends StatefulWidget {
  @override
  _MethodologieDeReportingBoutonState createState() =>
      _MethodologieDeReportingBoutonState();
}

class _MethodologieDeReportingBoutonState
    extends State<MethodologieDeReportingBouton> {
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
                      child: Text('Périmètre'),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Choix des indicateurs"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Limites méthodologique"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Cycle de reporting"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Déclaration de conformité"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Avis d'assurance"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Avis de vérification independants"),
                      onTap: () {},
                    ),
                  ],
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'Conformité et verification du reporting',
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
                    'Conformité et verification du reporting',
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
          child: Text('Périmètre',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text("Choix des indicateurs",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text("Limites méthodologique",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text("Cycle de reporting",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text("Déclaration de conformité",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text("Avis d'assurance",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text("Avis de vérification independants",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
      ],
    );
  }
}
