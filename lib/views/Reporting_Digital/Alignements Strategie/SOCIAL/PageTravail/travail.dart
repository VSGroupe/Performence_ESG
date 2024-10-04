import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TravailnewButton extends StatefulWidget {
  @override
  _TravailnewButtonState createState() => _TravailnewButtonState();
}

class _TravailnewButtonState extends State<TravailnewButton> {
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
          onPressed: () {
            context
                .go("/Accueil_Reporting/Social/Travail_chaine_de_valeur_(S2)");
          },
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
              " Travail, chaine de valeur (S2) ",
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
