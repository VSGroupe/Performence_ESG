import 'package:flutter/material.dart';

import 'package:marquee_text/marquee_direction.dart';
import 'package:marquee_text/marquee_text.dart';

import 'package:performence_esg/views/Reporting_Digital/widgets/search_bar.dart';

import 'package:performence_esg/views/screen_home/widgets/widget_screen_home/InfoBar.dart';

class IndexReportingPage extends StatefulWidget {
  const IndexReportingPage({Key? key}) : super(key: key);

  @override
  State<IndexReportingPage> createState() => _IndexReportingPageState();
}

class _IndexReportingPageState extends State<IndexReportingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (() {}),
          child: Image.asset(
            'assets/icons/Logotype_Sifca.png',
            width: 90,
          ),
        ),
        elevation: 50,
        backgroundColor: Colors.green,
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
            width: 600,
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
              )),
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
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Center(
                          child: SizedBox(
                            width: 450,
                            height: 30,
                            child: const MarqueeText(
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
                        const SizedBox(
                          height: 10,
                        ),
                        const SearchBarre(),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Stack(
                          children: [
                            Image.asset('assets/images/salutation.png'),
                            const Positioned(
                              top: -5,
                              left: 70,
                              bottom: 5,
                              child: Center(
                                child: Text(
                                  "Indexe de reporting",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                    color: Color.fromARGB(255, 245, 201, 80),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
