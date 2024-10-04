import 'package:flutter/material.dart';

class RessourceEconomienewButton extends StatefulWidget {
  @override
  _RessourceEconomienewButtonState createState() =>
      _RessourceEconomienewButtonState();
}

class _RessourceEconomienewButtonState
    extends State<RessourceEconomienewButton> {
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
                      255, 48, 95, 46); // Couleur lorsque survolé
                }
                return Color.fromARGB(255, 85, 85, 88); // Couleur par défaut
              },
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Réglez ici le rayon des bords
              ),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              "Ressources et economie (E5)...",
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
