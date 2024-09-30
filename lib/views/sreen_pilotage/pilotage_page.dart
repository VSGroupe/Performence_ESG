import 'package:flutter/material.dart';

import 'package:marquee_text/marquee_direction.dart';
import 'package:marquee_text/marquee_text.dart';
import 'package:performence_esg/views/screen_home/widgets/widget_screen_home/InfoBar.dart';
import 'package:performence_esg/views/screen_home/widgets/widget_screen_home/header.dart';

import 'package:performence_esg/views/sreen_pilotage/widgets/element_pilotage.dart';
import 'package:performence_esg/views/sreen_pilotage/widgets/showDialog1.dart';

class PilotageHome extends StatefulWidget {
  const PilotageHome({Key? key}) : super(key: key);

  @override
  State<PilotageHome> createState() => _PilotageHomeState();
}

class _PilotageHomeState extends State<PilotageHome> {
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
          icon: const Icon(
            Icons.home,
            weight: 20,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        title: const Text(
          "Accueil Pilotage",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        elevation: 50,
        backgroundColor: Color.fromARGB(255, 65, 63, 2),
        actions: [
          const Text(
            "Memel Akpa Joel",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              weight: 20,
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Showdialog1Bouton(),
          const SizedBox(
            width: 40,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("images/fond_accueil.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.darken),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Center(
                          child: SizedBox(
                            width: 450,
                            height: 30,
                            child: MarqueeText(
                              text: TextSpan(
                                  text: "Bienvenue dans le pilotage des ",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Performences ",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 25,
                                        )),
                                    TextSpan(
                                        text: "ESG",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 25,
                                        )),
                                  ]),
                              textDirection: TextDirection.ltr,
                              marqueeDirection: MarqueeDirection.rtl,
                              alwaysScroll: true,
                              style: const TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                              ),
                              speed: 18,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "Piloter ",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "et editer ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: "vos données de ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: "Performence ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text: "ESG ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                    text: "avec simplicité ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold)),
                              ]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Baniere(),
                    const ElementPilotageNew()
                  ],
                ),
              ),
            ),
          ),
          const CopyRight()
        ],
      ),
    );
  }
}
