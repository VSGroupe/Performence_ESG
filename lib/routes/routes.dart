import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:performence_esg/views/Espace_pilotage_Screen/espace_pilotage.dart';
import 'package:performence_esg/views/Espace_pilotage_Screen/pages/Performances.dart';
import 'package:performence_esg/views/Espace_pilotage_Screen/pages/Tableau_de_bord.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageBiodiversit%C3%A9/pageBiodiversit%C3%A9.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageClimat/pageClimat.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageEnergie/pageEnergie.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PagePollution/pagePolution.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageRessourceEaux/pageRessourceEaux.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/ENVIRONNEMENT/PageRessourcesEconomie/pageRessourceEconomie.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageBusiness/pagebusiness.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageConduite/pageConduite.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageMotDirecteur/pagemotDirigeant.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PageOrganisation/pageOganisation.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/GOUVERNANCE/PagePartie/pagePartie.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageConformit%C3%A9/pageConformite.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PageDeclaration/pageDeclaration.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PagePerimetre/pagePerimetre.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/PagePrincipeGeneraux/pagePrincipeGenereaux.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/INFORMATIONS%20GENERALES/pageContexte/pageContext.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/SOCIAL/PageCommunaut%C3%A9/pageCommunaute.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/SOCIAL/PageConsommateurs/pageConsommateur.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/SOCIAL/PageDroit/pageDroit.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/SOCIAL/PagePersonnel/pagePersonnel.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/SOCIAL/PageTravail/pageTravail.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageEnjeux/pageEnjeux.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageImpact/pageImpact.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageMaterialit%C3%A9/pageMaterialite.dart';
import 'package:performence_esg/views/Reporting_Digital/Alignements%20Strategie/STRATEGIE/PageRoad/pageRoad.dart';
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
      // GoRoute(
      //   path: '/',
      //   pageBuilder: (context, state) => NoTransitionPage<void>(
      //     key: state.pageKey,
      //     restorationId: state.pageKey.value,
      //     child: const HomeScreen(),
      //   ),
      // ),
      GoRoute(
        path: '/',
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

      //  ALIGNEMENT STRATEGIQUE PERFORMANCES ESG

      //  INFORMATIONS GENERALES
      GoRoute(
        path: '/Accueil_Reporting/Informations_generales/Context',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const ContextPage(),
        ),
      ),
      GoRoute(
        path: '/Accueil_Reporting/Informations_generales/Principes_genereaux',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const PrincipeGenereauxPage(),
        ),
      ),
      GoRoute(
        path:
            '/Accueil_Reporting/Informations_generales/Declaration_de_conformite_alignements_internationnaux_et_aux_secteurs_specifique_et_principales_exigence_(GRI_GPSNR_ODD)',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const DeclarationDeConformitePage(),
        ),
      ),
      GoRoute(
        path:
            '/Accueil_Reporting/Informations_generales/Perimetre_cycle_de_reporting_et_limites_methodologique',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const PerimetrePage(),
        ),
      ),
      GoRoute(
        path:
            "/Accueil_Reporting/Informations_generales/Conformite_et_verification_(avis_d'assurance_verification_tiers_independant)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const ConformitePage(),
        ),
      ),
      //  GOUVERNANCE
      GoRoute(
        path: "/Accueil_Reporting/Gouvernance/Mot_du_dirigeant",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const MotDuDirigeantPage(),
        ),
      ),
      GoRoute(
        path:
            "/Accueil_Reporting/Gouvernance/Organisation_(Conseil_d'administration_organigramme_startegie_DD)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const OrganisationnewPage(),
        ),
      ),
      GoRoute(
        path:
            "/Accueil_Reporting/Gouvernance/Bussiness_(vision_mission_valeurs_marche_activites_produits/service)(G2)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const BusinessPage(),
        ),
      ),
      GoRoute(
        path:
            "/Accueil_Reporting/Gouvernance/Conduite_des_affaires_(Politiques_et_chartes_engagement_d'affaire)(G2)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const ConduitePage(),
        ),
      ),
      GoRoute(
        path:
            "/Accueil_Reporting/Gouvernance/Partie_prenantes_(Liste_attentes_dialogues)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const PartiePrenantePage(),
        ),
      ),
      //  STRATEGIE
      GoRoute(
        path:
            "/Accueil_Reporting/Strategie/Impacts_risques_et_opportunites_(G1)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const ImpactPage(),
        ),
      ),
      GoRoute(
        path: "/Accueil_Reporting/Strategie/Materialite_(G1)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const MaterialitenewPage(),
        ),
      ),
      GoRoute(
        path:
            "/Accueil_Reporting/Strategie/Enjeux_materiels_et_alignement_strategie_(G1)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const EnjeuxPage(),
        ),
      ),
      GoRoute(
        path: "/Accueil_Reporting/Strategie/Road_Mapp_et_plan_d'action",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const RoadPage(),
        ),
      ),
      // //  SOCIAL
      GoRoute(
        path:
            "/Accueil_Reporting/Social/Personnel_de_l'entreprise_(S1)_emploie_dialogue_social_SST_egalite",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const PersonnelPage(),
        ),
      ),
      GoRoute(
        path: "/Accueil_Reporting/Social/Travail_chaine_de_valeur_(S2)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const TravailPage(),
        ),
      ),
      GoRoute(
        path: "/Accueil_Reporting/Social/Droit_des_humains_due_diligence",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const DroitPage(),
        ),
      ),
      GoRoute(
        path: "/Accueil_Reporting/Social/Communautes_affectees_(S2)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const CommunautePage(),
        ),
      ),
      GoRoute(
        path:
            "/Accueil_Reporting/Social/Consommateurs_et_utilisateurs_finaux_(S4)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const ConsommateurPage(),
        ),
      ),
      // //  ENVIRONNEMENT
      GoRoute(
        path:
            "/Accueil_Reporting/Environnement/Climat_(GES_Neutralite_carbone_Temperaure)(E1)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const ClimatPage(),
        ),
      ),
      GoRoute(
        path:
            "/Accueil_Reporting/Environnement/Pollution_Dechets_Impact_eau_sol_air_(E2)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const PollutionPage(),
        ),
      ),
      GoRoute(
        path:
            "/Accueil_Reporting/Environnement/Ressources_eaux_et_maritimes_(E3)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const RessourcesEauxPage(),
        ),
      ),
      GoRoute(
        path: "/Accueil_Reporting/Environnement/Biodiversite_(E4)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const BuiodiversitePage(),
        ),
      ),
      GoRoute(
        path:
            "/Accueil_Reporting/Environnement/Ressources_et_economie_circulaire_(E5)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const RessourcesEconomiePage(),
        ),
      ),
      GoRoute(
        path:
            "/Accueil_Reporting/Environnement/Energie_(Consommation_et_type_carburant_flote_automobile_carbone_neutre_transition_energetique_energies_renouvelable)",
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const EnergiePage(),
        ),
      ),
    ],
  );
}
