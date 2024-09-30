import 'package:flutter/material.dart';
import 'package:performence_esg/views/sreen_pilotage/modules/overview_card.dart';
import 'package:performence_esg/views/sreen_pilotage/widgets/custom_text.dart';
import 'package:performence_esg/views/sreen_pilotage/widgets/overview_item.dart';

class ContentPilotageHome extends StatefulWidget {
  const ContentPilotageHome({Key? key}) : super(key: key);

  @override
  State<ContentPilotageHome> createState() => _ContentPilotageHomeState();
}

class _ContentPilotageHomeState extends State<ContentPilotageHome> {
  ScrollController scrollController = ScrollController();
  double mheight = 150;
  double height = 200;
  double bHeight = 250;

  Future<void> _showMyDialog(String imagePath, String title) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, //// user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          scrollable: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Color(0xFFFFC000),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          content: ImageWidget(imagePath: imagePath),
          actions: [
            TextButton(
              onPressed: () {
                // Gérer la logique lorsque l'utilisateur appuie sur ce bouton
                Navigator.of(context).pop(); // Fermez la boîte de dialogue
              },
              child: const Text("Fermer",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 4.0,
          children: [
            // Consolidation Groupe
            const SizedBox(
              height: 200,
              width: 300,
              child: OverviewCard(
                title: "Consolidation",
                titleColor: Color(0xffb66600),
                children: [
                  EntityTextButton(
                    title: "COMEX",
                    color: Color(0xffb66600),
                    entiteID: "comex",
                  ),
                  EntityTextButton(
                    title: "GROUPE SIFCA",
                    color: Color(0xffb66600),
                    entiteID: "groupe-sifca",
                  ),
                ],
              ),
            ),
            // Oléagineux
            SizedBox(
              width: 300,
              child: const OverviewCard(
                title: "Oleagineux",
                titleColor: Colors.red,
                children: [
                  EntityTextButton(
                    title: "GOLDEN SIFCA",
                    color: Colors.red,
                    entiteID: "golden-sifca",
                  ),
                  EntityTextButton(
                    title: "THSP",
                    color: Colors.red,
                    entiteID: "thsp",
                  ),
                  EntityTextButton(
                    title: "SANIA",
                    color: Colors.red,
                    entiteID: "sania",
                  ),
                  EntityTextButton(
                    title: "MOPP",
                    color: Colors.red,
                    entiteID: "mopp",
                  ),
                  OverviewExpansionItem(
                    title: "PALMCI",
                    titleColor: Colors.red,
                    entiteID: 'palmci',
                    children: [
                      EntityTextButton(
                        title: "Palmci Siège",
                        color: Colors.black54,
                        entiteID: "palmci-siege",
                      ),
                      EntityTextButton(
                        title: "Blidouba",
                        color: Colors.black54,
                        entiteID: "palmci-blidouba",
                      ),
                      EntityTextButton(
                        title: "Boubo",
                        color: Colors.black54,
                        entiteID: "palmci-boubo",
                      ),
                      EntityTextButton(
                        title: "Ehania",
                        color: Colors.black54,
                        entiteID: "palmci-ehania",
                      ),
                      EntityTextButton(
                        title: "Gbapet",
                        color: Colors.black54,
                        entiteID: "palmci-gbapet",
                      ),
                      EntityTextButton(
                        title: "Iboké",
                        color: Colors.black54,
                        entiteID: "palmci-iboke",
                      ),
                      EntityTextButton(
                        title: "Irobo",
                        color: Colors.black54,
                        entiteID: "palmci-irobo",
                      ),
                      EntityTextButton(
                        title: "Neka",
                        color: Colors.black54,
                        entiteID: "palmci-neka",
                      ),
                      EntityTextButton(
                        title: "Toumanguié",
                        color: Colors.black54,
                        entiteID: "palmci-toumanguie",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Catouchou Naturel
            const SizedBox(
              width: 300,
              child: OverviewCard(
                title: "naturel",
                titleColor: Colors.green,
                children: [
                  EntityTextButton(
                    title: "CRC",
                    color: Colors.green,
                    entiteID: "crc",
                  ),
                  OverviewExpansionItem(
                    title: "GREL",
                    height: 60,
                    titleColor: Colors.green,
                    entiteID: "grel",
                    children: [
                      EntityTextButton(
                        title: "Apimenim",
                        color: Colors.black54,
                        entiteID: "grel-apimenim",
                      ),
                      EntityTextButton(
                        title: "Tsibu",
                        color: Colors.black54,
                        entiteID: "grel-tsibu",
                      ),
                    ],
                  ),
                  EntityTextButton(
                    title: "RENL",
                    color: Colors.green,
                    entiteID: "renl",
                  ),
                  OverviewExpansionItem(
                    title: "SAPH",
                    titleColor: Colors.green,
                    entiteID: 'saph',
                    children: [
                      EntityTextButton(
                        title: "SAPH Siège",
                        color: Colors.black54,
                        entiteID: "saph-siege",
                      ),
                      EntityTextButton(
                        title: "Béttié",
                        color: Colors.black54,
                        entiteID: "saph-bettie",
                      ),
                      EntityTextButton(
                        title: "Bongo",
                        color: Colors.black54,
                        entiteID: "saph-bongo",
                      ),
                      EntityTextButton(
                        title: "Loeth",
                        color: Colors.black54,
                        entiteID: "saph-loeth",
                      ),
                      EntityTextButton(
                        title: "PH/CC",
                        color: Colors.black54,
                        entiteID: "saph-ph-cc",
                      ),
                      EntityTextButton(
                        title: "Rapides-Grah",
                        color: Colors.black54,
                        entiteID: "saph-rapides-grah",
                      ),
                      EntityTextButton(
                        title: "Toupah",
                        color: Colors.black54,
                        entiteID: "saph-toupah",
                      ),
                      EntityTextButton(
                        title: "Yacoli",
                        color: Colors.black54,
                        entiteID: "saph-yacoli",
                      ),
                    ],
                  ),
                  EntityTextButton(
                    title: "SIPH",
                    color: Colors.green,
                    entiteID: "siph",
                  ),
                ],
              ),
            ),
            // Sucre
            const SizedBox(
              height: 200,
              width: 300,
              child: OverviewCard(
                title: "Sucre",
                titleColor: Colors.blue,
                children: [
                  OverviewExpansionItem(
                    title: "SUCRIVOIRE",
                    titleColor: Colors.blue,
                    entiteID: "sucrivoire",
                    children: [
                      EntityTextButton(
                        title: "Sucrivoire-Siège",
                        color: Colors.black54,
                        entiteID: "sucrivoire-siege",
                      ),
                      EntityTextButton(
                        title: "Borotou-Koro",
                        color: Colors.black54,
                        entiteID: "sucrivoire-borotou-koro",
                      ),
                      EntityTextButton(
                        title: "Zuénoula",
                        color: Colors.black54,
                        entiteID: "sucrivoire-zuenoula",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Consolidaltion Filières
            SizedBox(
              height: mheight,
              width: 300,
              child: const OverviewCard(
                title: "Consolidation de secteur",
                titleColor: Color(0xffb66600),
                children: [
                  EntityTextButton(
                    title: "Oleagineux",
                    entiteID: 'oleagineux',
                    color: Colors.red,
                  ),
                  EntityTextButton(
                    title: "Sucre ivoire",
                    entiteID: 'sucre',
                    color: Colors.blue,
                  ),
                  EntityTextButton(
                    title: "naturel ruber",
                    entiteID: 'caoutchouc-naturel',
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            // SIFCA HOLDING
            SizedBox(
              height: mheight,
              width: 300,
              child: const OverviewCard(
                title: "SIFCA HOLDING",
                titleColor: Colors.grey,
                children: [
                  EntityTextButton(
                    title: 'SIFCA Holding',
                    entiteID: 'sifca-holding',
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Element extends StatelessWidget {
  const Element({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      color: Colors.red,
    );
  }
}

class EntityTextButton extends StatefulWidget {
  final String title;
  final String entiteID;
  final Color color;
  final Function()? onTap;
  const EntityTextButton(
      {super.key,
      required this.title,
      required this.entiteID,
      this.onTap,
      required this.color});

  @override
  State<EntityTextButton> createState() => _EntityTextButtonState();
}

class _EntityTextButtonState extends State<EntityTextButton> {
  bool entityIsnotInRestriction(List userRestrictionList, String entity) {
    return userRestrictionList.isEmpty || !userRestrictionList.contains(entity);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: widget.onTap ??
            () async {
              // goToEspaceEntitePilotage(widget.entiteID);
            },
        child: CustomText(
          text: widget.title,
          color: widget.color,
          weight: FontWeight.bold,
        ));
  }
}

class ImageWidget extends StatelessWidget {
  final String imagePath;

  const ImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      width: 700,
      imagePath,
      fit: BoxFit.fill,
      frameBuilder:
          (BuildContext context, Widget child, int? pixel, bool isShow) {
        if (pixel == null) {
          return const SizedBox(
            width: 700,
            height: 500,
            child: Column(
              children: [
                // loadingPageWidget(),
              ],
            ),
          );
        }
        return child;
      },
    );
  }
}
