import 'package:flutter/material.dart';

class PublicationBouton extends StatefulWidget {
  @override
  _PublicationBoutonState createState() => _PublicationBoutonState();
}

class _PublicationBoutonState extends State<PublicationBouton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        // decoration: BoxDecoration(
        //   boxShadow: [
        //     // BoxShadow(
        //     //   color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
        //     //   spreadRadius: 2,
        //     //   blurRadius: 7,
        //     //   offset: Offset(0, 3), // Position de l'ombre (X, Y)
        //     // ),
        //   ],
        // ),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (_isHovered) {
                  return Color.fromARGB(
                      255, 236, 78, 78); // Couleur lorsque survolé
                }
                return Color.fromARGB(255, 57, 54, 221); // Couleur par défaut
              },
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              ' Pulication ',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
