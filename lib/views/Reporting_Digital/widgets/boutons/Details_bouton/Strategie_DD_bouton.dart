import 'package:flutter/material.dart';

class StrategieDdBouton extends StatefulWidget {
  @override
  _StrategieDdBoutonState createState() => _StrategieDdBoutonState();
}

class _StrategieDdBoutonState extends State<StrategieDdBouton> {
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
                      child: Text("Integration des facteurs de durabilité"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Axes strategique"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Enjeux significatifs"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("schema de la strategie"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Politique DD"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Text("Feuille de route "),
                      onTap: () {},
                    ),
                  ],
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'Strategie DD',
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
                    '         Strategie DD          ',
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
          child: Text("Integration des facteurs de durabilité",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text("Axes strategique",
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
          child: Text("schema de la strategie",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text("Politique DD",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text("Feuille de route ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 38, 245))),
          onTap: () {},
        ),
      ],
    );
  }
}
