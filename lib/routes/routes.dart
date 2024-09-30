import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:performence_esg/views/Espace_pilotage_Screen/espace_pilotage.dart';
import 'package:performence_esg/views/Espace_pilotage_Screen/pages/Performances.dart';
import 'package:performence_esg/views/Espace_pilotage_Screen/pages/Tableau_de_bord.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Pages_Index_De_Reporting/index_reporting.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/tableau_de_bord_admin.page/Tableau_de_bord_reporting_New.dart';
import 'package:performence_esg/views/Reporting_Digital/home_page_reporting.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Page_Gouvernace/Adhesion_initiative.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Page_Gouvernace/Conseil_administration.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Page_Gouvernace/Ethique_Conformite.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Page_Gouvernace/Organisation.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Page_Gouvernace/Structure_DD.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Page_Gouvernace/Vision_Mission.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Page_Partie_Prenante/Dialogue.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Page_Partie_Prenante/Hierachisation.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Page_Partie_Prenante/Liste_partie.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Pages_Business_Model/March%C3%A9.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Pages_Business_Model/Produits_et_service.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/Pages_Business_Model/R%C3%A9seaux.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/pages_Contextes/Mots_du_dirigeant.dart';
import 'package:performence_esg/views/Reporting_Digital/pages/pages_Contextes/contexte.dart';

import 'package:performence_esg/views/error_page/error_page.dart';
import 'package:performence_esg/views/screen_home/home_page.dart';
import 'package:performence_esg/views/screen_login/login_page.dart';
import 'package:performence_esg/views/sreen_pilotage/pilotage_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class RouteClass {
  //  static final supabase = Supabase.instance.client;

  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: "/",
    // supabase.auth.currentSession != null ? "/" : "/account/login",
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const HomeScreen(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const HomeReportingPage(),
        ),
      ),
      GoRoute(
        path: '/Connexion',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: '/Pilotage',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const PilotageHome(),
        ),
      ),
      GoRoute(
        path: '/Connexion',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: '/Pilotage/espace/Accueil',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const EspacePilotage(),
        ),
      ),
      GoRoute(
        path: '/Pilotage/espace/Accueil',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const EspacePilotage(),
        ),
      ),
      GoRoute(
        path: '/Pilotage/espace/TableauDeBord',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const TableauDeBordPage(),
        ),
      ),
      GoRoute(
        path: '/Pilotage/espace/Performence',
        builder: (context, state) => const PerformancesPage(),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Contexte',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const ContextePage(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Mot_du_dirigeant',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const MotsDuDirigeantPage(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Marches',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const MarchePage(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Produits_et_services',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const ProduitsEtServicePage(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Reseaux',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const ReseauxPage(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Conseil_Administration',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const ConseilAdministrationPage(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Organisation',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const OrganisationPage(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Structure_DD',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const StructureDDPage(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Visions_missions_valeurs',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const VisionMissionPages(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Ethique_Conformite_Duediligeance',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const EthiqueConformitePage(),
        ),
      ),
      GoRoute(
        path:
            '/Accueil_Reporting/Adhesion_initiative_volontaire_et_influence_des_reseaux',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const AdhesionInitiativePage(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Listes_parties_prenantes_et_attentes',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const ListePartiePages(),
        ),
      ),
      GoRoute(
        path:
            '/Accueil_Reporting/Hierachisation_des_adultes_des_parties_prenantes',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const HierachisationPage(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Dialogue_avec_les_parties_prenantes',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const DialoguePage(),
        ),
      ),
      //  Pour le login
      GoRoute(
        path: '/Accueil_Reporting/Tableau_de_bord_reporting',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const TableauDeBordReportingPageNew(),
        ),
      ),
      //  index de reporting
      GoRoute(
        path: '/Accueil_Reporting/index_de_reporting',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const IndexReportingPage(),
        ),
      ),
    ],
  );
}
