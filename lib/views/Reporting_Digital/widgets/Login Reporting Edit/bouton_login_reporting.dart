import 'package:flutter/material.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/Login%20Reporting%20Edit/Composant/formulaire_login.dart';

class ButtonLoginReporting extends StatefulWidget {
  @override
  _ButtonLoginReportingState createState() => _ButtonLoginReportingState();
}

class _ButtonLoginReportingState extends State<ButtonLoginReporting> {
  Future<void> _showMyDialog(BuildContext context, String title) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          scrollable: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFFFFC000),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          content: NewFormulaire(), // Le formulaire de connexion est ajouté ici
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Fermer",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showMyDialog(context, "ESPACE ADMINISTRATEUR");
      },
      child: const Text(
        "Connexion",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF008000), // Couleur verte pour le bouton
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      ),
    );
  }
}
