import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marquee_text/marquee_direction.dart';
import 'package:marquee_text/marquee_text.dart';
import 'package:performence_esg/views/constent/AppColor.dart';
import 'package:performence_esg/views/screen_home/widgets/coposant/form.dart';
import 'package:performence_esg/views/screen_home/widgets/widget_screen_home/InfoBar.dart';

import 'package:performence_esg/views/screen_home/widgets/widget_screen_home/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  get long => null;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondColor,
        title: const InfoAppBar(),
        automaticallyImplyLeading: false,
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage("images/shop2.jpg"),
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
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: SizedBox(
                          width: 450,
                          height: 30,
                          child: MarqueeText(
                            text: TextSpan(
                              text:
                                  "Piloter et editer vos données de Performence ESG avec simplicité",
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
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
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    "assets/images/logoESG.png",
                    width: widget.long ?? 400,
                    height: widget.long ?? 100,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Baniere(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: InkWell(
                              onTap: () {
                                context.go('/Connexion');
                              },
                              onHover: (value1) {
                                setState(() {
                                  isHovered1 = value1;
                                });
                              },
                              child: SizedBox(
                                height: 300,
                                width: 300,
                                child: BlockMenuAcc(
                                  text1: "PILOTAGE",
                                  text2: "Pilotage des donnnées ESG",
                                  imgAcess: "assets/images/pilotage.png",
                                  elevation: isHovered1 ? 30 : 10,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: InkWell(
                              hoverColor: Colors.amber,
                              onTap: () {
                                context.go('/Accueil_Reporting');
                              },
                              onHover: (value3) {
                                setState(() {
                                  isHovered3 = value3;
                                });
                              },
                              child: SizedBox(
                                  height: 300,
                                  width: 300,
                                  child: BlockMenuAcc(
                                      text1: "REPORTING",
                                      text2: "Reporting des données ESG",
                                      imgAcess: "assets/images/gestion.jpg",
                                      shadow: tertiaireColor,
                                      elevation: isHovered3 ? 30 : 10)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const CopyRight()
      ]),
    );
  }
}
