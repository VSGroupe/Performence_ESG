import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewFormulaire extends StatelessWidget {
  const NewFormulaire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF00c6ff), // Bleu clair
            Color(0xFF0072ff), // Bleu plus foncé
            Color(0xFFff00cc), // Rose-violet
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30), // Contours arrondis
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Veillez-vous Connecter s'il vous plait !",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          _buildTextField(Icons.person, "Email", false),
          const SizedBox(height: 20),
          _buildTextField(Icons.lock, "Mot de passe", true),
          const SizedBox(height: 20),
          _buildLoginButton(context),
          _forgotPassword(context),
        ],
      ),
    );
  }

  Widget _buildTextField(IconData icon, String hintText, bool obscureText) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.white),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white54),
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.go('/Accueil_Reporting/Tableau_de_bord_reporting');
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Colors.white.withOpacity(0.7),
      ),
      child: const Text(
        "Se connecter",
        style: TextStyle(
          color: Color(0xFF0072ff),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        "Mot de passe oublié ?",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
