import 'package:flutter/material.dart';

class Showdialog1Bouton extends StatefulWidget {
  @override
  _Showdialog1BoutonState createState() => _Showdialog1BoutonState();
}

class _Showdialog1BoutonState extends State<Showdialog1Bouton> {
  Future<void> _showMyDialog(
      BuildContext context, String imagePath, String title) async {
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
          content: ImageWidget(imagePath: imagePath),
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
    return TextButton(
      onPressed: () {
        _showMyDialog(context, 'assets/images/show2.jpg', "Performence ESG");
      },
      child: const Text(
        "A propos de perf ESG",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Color.fromARGB(255, 255, 255, 255),
          decoration: TextDecoration.underline, // Soulignement
          decorationColor: Colors.white, // Couleur du trait
          decorationThickness: 2.5, // Épaisseur du trait
          decorationStyle: TextDecorationStyle.solid, // Style du trait
          height:
              1.5, // Augmente l'espace entre les lignes, affectant les lettres comme "P"
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  final String imagePath;

  const ImageWidget({Key? key, required this.imagePath}) : super(key: key);

  Widget loadingPageWidget() {
    return const Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
            height: 50,
            width: 50,
            child: CircularProgressIndicator(
              color: Colors.grey,
              strokeWidth: 4,
            )),
        SizedBox(
            height: 30,
            width: 30,
            child:
                CircularProgressIndicator(color: Colors.amber, strokeWidth: 4)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      width: 700,
      imagePath,
      fit: BoxFit.fill,
      frameBuilder: (
        BuildContext context,
        Widget child,
        int? pixel,
        bool isShow,
      ) {
        if (pixel == null) {
          return SizedBox(
            width: 700,
            height: 500,
            child: Column(
              children: [
                loadingPageWidget(),
              ],
            ),
          );
        }
        return child;
      },
    );
  }
}
