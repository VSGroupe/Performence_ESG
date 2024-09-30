import 'package:flutter/material.dart';

import 'package:marquee_text/marquee_direction.dart';
import 'package:marquee_text/marquee_text.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/Login%20Reporting%20Edit/bouton_login_reporting.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/Text_actualit%C3%A91.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/actualit%C3%A9_element.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Details_bouton/Publication_bouton.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Ensemble_Bouton/Enseble_bouton2.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/boutons/Ensemble_Bouton/Ensemble_bouton.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/element_croisement.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/search_bar.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/slide.dart';
import 'package:performence_esg/views/Reporting_Digital/widgets/text_actualit%C3%A92.dart';
import 'package:performence_esg/views/screen_home/widgets/widget_screen_home/InfoBar.dart';
import 'package:performence_esg/views/screen_home/widgets/widget_screen_home/header.dart';

class HomeReportingPage extends StatefulWidget {
  const HomeReportingPage({Key? key}) : super(key: key);

  @override
  State<HomeReportingPage> createState() => _HomeReportingPageState();
}

class _HomeReportingPageState extends State<HomeReportingPage> {
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
        leadingWidth: 160,
        leading: InkWell(
          onTap: (() {}),
          child: Image.asset(
            'assets/icons/Logotype_Sifca.png',
          ),
        ),
        elevation: 50,
        backgroundColor: Color.fromARGB(255, 65, 63, 2),
        actions: [
          const Text(
            " Reporting Integré Année 2024",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          const SizedBox(
            width: 350,
          ),
          const SizedBox(width: 30),
          SizedBox(child: PublicationBouton()),
          const SizedBox(
            width: 30,
          ),
          ButtonLoginReporting(),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: (() {}),
            child: Image.asset(
              'assets/icons/fr.png',
              width: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: (() {}),
            child: Image.asset(
              'assets/icons/new.png',
              width: 25,
            ),
          ),
          const SizedBox(
            width: 20,
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
                      height: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: SizedBox(
                            width: 450,
                            height: 30,
                            child: MarqueeText(
                              text: TextSpan(
                                text: "Cultivons notre croissance",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                              textDirection: TextDirection.ltr,
                              marqueeDirection: MarqueeDirection.rtl,
                              alwaysScroll: true,
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                              ),
                              speed: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SearchBarre(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const BoutonGroupe(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Baniere(),
                    const SizedBox(
                      height: 10,
                    ),
                    // const slide(),
                    // const SizedBox(
                    //   height: 10,
                    // ),

                    const ActuliteElement(),
                    const SizedBox(height: 20),
                    // const TexteActualite(),
                    const SizedBox(
                      height: 20,
                    ),
                    const ActualiteElement2(),
                    const SizedBox(height: 40),
                    ElementCroisement(),
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
