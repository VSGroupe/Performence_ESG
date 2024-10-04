import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:performence_esg/views/screen_login/widgets/color_constants.dart';
import 'package:performence_esg/views/screen_login/widgets/custom_button.dart';
import 'package:performence_esg/views/screen_login/widgets/custom_textfield.dart';
import 'package:performence_esg/views/screen_login/widgets/global_constants.dart';
import 'package:performence_esg/views/screen_login/widgets/height_space.dart';

class LoginScreen extends StatefulWidget {
  static const String route = "/login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidthValue = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Image en arrière-plan
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/shop2.jpg"), // Remplace par ton image
                fit: BoxFit.cover, // L'image couvre tout l'écran
              ),
            ),
          ),
          // Contenu principal
          SingleChildScrollView(
            child: Form(
              key: loginFormKey,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 1200,
                      ),
                      Image.asset(
                        "assets/images/login_screen_image.png",
                        height: screenWidthValue * 0.42,
                        width: screenWidthValue * 0.42,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 380,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 110,
                          child: Image.asset(
                            "assets/images/gradient_circle.png",
                            height: 100,
                          ),
                        ),
                        Positioned(
                          top: 230,
                          left: 250,
                          child: Image.asset(
                            "assets/images/gradient_circle.png",
                            height: 100,
                          ),
                        ),
                        Positioned(
                          bottom: 40,
                          left: 185,
                          child: Image.asset(
                            "assets/images/gradient_circle.png",
                            height: 100,
                          ),
                        ),
                        Positioned(
                          bottom: 100,
                          left: 90,
                          child: Image.asset(
                            "assets/images/gradient_circle.png",
                            height: 75,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Veuillez-vous connecter",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // Texte en blanc
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            const HeightSpace(20),
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: Container(
                                    height: 400,
                                    width: screenWidthValue / 1.3,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 20),
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Espace Administrateur",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors
                                                  .white, // Texte en blanc
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                          const HeightSpace(50),
                                          TextFormField(
                                            style: const TextStyle(
                                                color: Colors
                                                    .white), // Couleur du texte saisi
                                            decoration: const InputDecoration(
                                              prefixIcon: Icon(
                                                Icons.email,
                                                color: Colors
                                                    .white, // Couleur de l'icône
                                              ),
                                              labelText: "Email",
                                              labelStyle: TextStyle(
                                                  color: Colors
                                                      .white), // Couleur du label
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors
                                                        .white), // Bordure normale
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white,
                                                    width:
                                                        2.0), // Bordure lorsque l'input est focus
                                              ),
                                            ),
                                          ),
                                          const HeightSpace(30),
                                          TextFormField(
                                            obscureText: true,
                                            style: const TextStyle(
                                                color: Colors
                                                    .white), // Couleur du texte saisi
                                            decoration: const InputDecoration(
                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: Colors
                                                    .white, // Couleur de l'icône
                                              ),
                                              labelText: "Mot de passe",
                                              labelStyle: TextStyle(
                                                  color: Colors
                                                      .white), // Couleur du label
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors
                                                        .white), // Bordure normale
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white,
                                                    width:
                                                        2.0), // Bordure lorsque l'input est focus
                                              ),
                                            ),
                                          ),
                                          const HeightSpace(30),
                                          CustomButton(
                                            buttonText: "Se connecter",
                                            buttonTextColor: secondaryAppColor,
                                            borderRadius: heightValue30,
                                            onTap: () {
                                              context.go('/Pilotage');
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
