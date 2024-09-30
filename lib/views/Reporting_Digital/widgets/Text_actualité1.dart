import 'package:flutter/material.dart';

class TexteActualite extends StatelessWidget {
  const TexteActualite({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 810),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 75, 78, 80), // Couleur de fond du cadre
                borderRadius:
                    BorderRadius.circular(10), // Bords arrondis du cadre
              ),
              child: const Text(
                'Actualité',
                style: TextStyle(
                  fontWeight: FontWeight.bold, // Texte en gras
                  color: Colors.white, // Couleur du texte
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
