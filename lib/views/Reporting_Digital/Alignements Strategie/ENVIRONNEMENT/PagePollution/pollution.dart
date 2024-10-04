import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:performence_esg/routes/routes.dart';

class PollutionnewButton extends StatefulWidget {
  @override
  _PollutionnewButtonState createState() => _PollutionnewButtonState();
}

class _PollutionnewButtonState extends State<PollutionnewButton> {
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
            context.go(
                "/Accueil_Reporting/Environnement/Pollution_Dechets_Impact_eau_sol_air_(E2)");
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (_isHovered) {
                  return Color.fromARGB(
                      255, 48, 95, 46); // Couleur lorsque survolé
                }
                return Colors.white; // Couleur par défaut
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
              "               Pollution (E2)                ",
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
