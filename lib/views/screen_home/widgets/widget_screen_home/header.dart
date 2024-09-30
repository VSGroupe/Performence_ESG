import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:performence_esg/views/constent/AppColor.dart';

// INFORMATION DE L'APPBAR:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

class InfoAppBar extends StatelessWidget {
  const InfoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(100, 0, 30, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text("Informations Utiles : ",
                  style: TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                      fontWeight: FontWeight.w600)),
              InfoUtile(),
            ],
          ),
          Row(
            children: [
              // badgeNotif(
              //     tap: () {
              //       /* OpenPage(
              //           context,
              //           const DefaultTabController(
              //               initialIndex: 0,
              //               length: 2,
              //               child: ProfilPage(ongChange1: 1))); */
              //     },
              //     icon: Icons.notifications,
              //     afficheNbre: "7"),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage("assets/icons/AvatarUser.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// APPEL DE L'INFO UTILE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

class InfoUtile extends StatelessWidget {
  const InfoUtile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      height: 20,
      child: Center(
        child: Marquee(
          text:
              " Vision Strategie Groupe vous remercie pour la confiance et le temps  dont vous lui faite preuve. Sur ceux passer une excellente journée et bonne année 2023-2024..... !",
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 20.0,
          velocity: 100.0,
          pauseAfterRound: const Duration(seconds: 5),
          startPadding: 10.0,
          accelerationDuration: const Duration(seconds: 2),
          accelerationCurve: Curves.linear,
          decelerationDuration: const Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,
        ),
      ),
    );
  }
}

// BADGE DE NOTIFICATION AVEC ICONBUTTON::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

class badgeNotif extends StatelessWidget {
  final VoidCallback tap;
  final IconData icon;
  final String afficheNbre;
  final double? iconsize;
  final Color? iconcolor;
  final double? positionright;
  final double? positiontop;
  final double? widthbadge;
  final double? heightbadge;
  final double? textbadgesize;
  final Color? textbadgecolor;
  final Color? badgecolor;

  const badgeNotif({
    Key? key,
    required this.tap,
    required this.icon,
    required this.afficheNbre,
    this.iconsize,
    this.iconcolor,
    this.positiontop,
    this.positionright,
    this.widthbadge,
    this.heightbadge,
    this.badgecolor,
    this.textbadgecolor,
    this.textbadgesize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            icon: Icon(
              icon,
              size: iconsize ?? 30,
            ),
            onPressed: tap),
        Positioned(
          right: positionright ?? -1,
          top: positiontop ?? 0,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: badgecolor ?? Colors.red,
              shape: BoxShape.circle,
            ),
            constraints: BoxConstraints(
              minWidth: widthbadge ?? 20,
              minHeight: heightbadge ?? 20,
            ),
            child: Text(
              afficheNbre,
              style: TextStyle(
                color: textbadgecolor ?? Colors.white,
                fontSize: textbadgesize ?? 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

// L'IMAGE DE LA BANIEREDE MENU::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

class Baniere extends StatefulWidget {
  final double? long;
  final double? larg;
  final double? textsize1;
  final double? testsize2;

  const Baniere({
    Key? key,
    this.long,
    this.larg,
    this.textsize1,
    this.testsize2,
  }) : super(key: key);

  @override
  State<Baniere> createState() => _BaniereState();
}

class _BaniereState extends State<Baniere> {
  @override
  Widget build(BuildContext context) {
    // final donnee = Provider.of<LoginName>(context).name;
    // final civilite = donnee?['user']['civilite']; // Récupération du nom
    // final nom = donnee?['user']['nom_contribut']; // Récupération du nom
    // final prenom =
    //     donnee?['user']['prenom_contribut']; // Récupération du prénom

    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/bandeSifca.jpg",
            width: widget.long ?? 1500,
            height: widget.larg ?? 250,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text(
              //   "Reporting Digital des Données RSE",
              //   style: TextStyle(
              //       fontSize: widget.textsize1 ?? 30,
              //       fontWeight: FontWeight.bold,
              //       color: primaryColor),
              // ),
              SizedBox(
                width: 870,
              ),
              // Text(
              //   "Bienvenue : Memel Akpa Joel",
              //   style: TextStyle(
              //       fontSize: widget.testsize2 ?? 20,
              //       fontStyle: FontStyle.italic,
              //       fontWeight: FontWeight.w700,
              //       color: Colors.white),
              // )
            ],
          ),
        ],
      ),
    );
  }
}
