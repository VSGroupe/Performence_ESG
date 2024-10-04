import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PerimtrenewButton extends StatefulWidget {
  @override
  _PerimtrenewButtonState createState() => _PerimtrenewButtonState();
}

class _PerimtrenewButtonState extends State<PerimtrenewButton> {
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
      child: ElevatedButton(
        onPressed: () {
          context.go(
              '/Accueil_Reporting/Informations_generales/Perimetre_cycle_de_reporting_et_limites_methodologique');
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (_isHovered) {
                return Color.fromARGB(255, 48, 95, 46); // Couleur survolée
              }
              return Colors.white; // Couleur par défaut
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0), // Rayon des bords
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Périmètre, cycle de reporting',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4), // Espace entre les deux lignes
              Text(
                'et limites méthodologiques',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
