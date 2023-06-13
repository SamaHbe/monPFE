import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_application_7/Oeufs/Brik_frit.dart';
import 'package:flutter_application_7/Oeufs/brik_pomme_terre.dart';
import 'package:flutter_application_7/Oeufs/oeuf_brouill%C3%A9.dart';
import 'package:flutter_application_7/Oeufs/oeuf_en_omelette.dart';
import 'package:flutter_application_7/Oeufs/oeuf_mayonnaise.dart';

import 'package:flutter_application_7/Oeufs/oeufdur.dart';
import 'package:flutter_application_7/Oeufs/omlette_fromage.dart';
import 'package:flutter_application_7/Salade/salade_carotte_bettrave.dart';
import "package:flutter_application_7/Salade/salade_coeur_d'artichaut.dart";
import 'package:flutter_application_7/Salade/salade_concombre.dart';
import 'package:flutter_application_7/Salade/salade_fruit_mer.dart';
import 'package:flutter_application_7/Salade/salade_haricot_vert.dart';
import 'package:flutter_application_7/Salade/salade_lentielles.dart';
import 'package:flutter_application_7/Salade/salade_ni%C3%A7oise.dart';
import 'package:flutter_application_7/Salade/salade_pomme_terre.dart';
import 'package:flutter_application_7/Salade/salade_riz_thon.dart';
import 'package:flutter_application_7/Salade/salade_russe_vinaigrette.dart';
import 'package:flutter_application_7/Salade/salade_tomate.dart';
import 'package:flutter_application_7/Salade/salade_tunisienne_vinaigrette.dart';
import 'package:flutter_application_7/Salade/salade_verte.dart';
import 'package:flutter_application_7/accueil.dart';
import 'package:flutter_application_7/datapatient.dart';
import 'package:flutter_application_7/glaces/zgougou_sans_decoration.dart';
import 'package:flutter_application_7/glycemie.dart';
import 'package:flutter_application_7/listepatient.dart';
import 'package:flutter_application_7/mdpoublier.dart';
import 'package:flutter_application_7/Pain%20et%20Assimil%C3%A9s/pain.dart';
import 'package:flutter_application_7/patisserie.dart';
import 'package:flutter_application_7/laitages.dart';
import 'package:flutter_application_7/assaisonnements_condiments.dart';
import 'package:flutter_application_7/boisson_sucre.dart';
import 'package:flutter_application_7/boisson_alcool.dart';
import 'package:flutter_application_7/boisson_non_sucre.dart';
import 'package:flutter_application_7/create_med.dart';
import 'package:flutter_application_7/create_patient.dart';
import 'package:flutter_application_7/creux_sales.dart';
import 'package:flutter_application_7/creux_sucres.dart';
import 'package:flutter_application_7/desserts.dart';
import 'package:flutter_application_7/glaces/entrements_glaces.dart';
import 'package:flutter_application_7/fromage.dart';
import 'package:flutter_application_7/choix.dart';
import 'package:flutter_application_7/categories.dart';
import 'package:flutter_application_7/mesure_sucre.dart';
import 'package:flutter_application_7/Oeufs/oeufs.dart';
import 'package:flutter_application_7/plats_com.dart';
import 'package:flutter_application_7/poissons.dart';
import 'package:flutter_application_7/produits_sucres.dart';
import 'package:flutter_application_7/restauration_rapide.dart';
import 'package:flutter_application_7/Salade/salades.dart';
import 'package:flutter_application_7/se_connecter_medecin.dart';
import 'package:flutter_application_7/se_connecter_patient.dart';
import 'package:flutter_application_7/soupes%20et%20potages/broudou_legumes.dart';
import 'package:flutter_application_7/soupes%20et%20potages/broudou_pomme_de_terre.dart';
import "package:flutter_application_7/soupes%20et%20potages/chorba_longue_d'oiseau.dart";
import 'package:flutter_application_7/soupes%20et%20potages/chorba_orge.dart';
import 'package:flutter_application_7/soupes%20et%20potages/makarouna_jaria.dart';
import 'package:flutter_application_7/soupes et potages/soupes_potages.dart';
import 'package:flutter_application_7/viandes/viandes_abats.dart';
import 'package:flutter_application_7/volailles.dart';
import 'package:flutter_application_7/Salade/quantite.dart';
import 'package:flutter_application_7/ajouteraliment/ajouteraliment.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Choix(),
      routes: {
        '/Ajouteraliment': (context) => ajouteraliment(),
        '/glycemie': (context) => Glycemie(),
        '/laitages': (context) => laitages(),
        '/patisseuries': (context) => const Patisserie(),
        '/assaisonnements_condiments': (context) =>
            assaisonnements_condiments(),
        '/desserts': (context) => const desserts(),
        '/entrements_glaces': (context) => const entrements_glaces(),
        '/produit_sucres': (context) => const produit_sucres(),
        '/creux_salés': (context) => const creux_sales(),
        '/creux_sucrés': (context) => const creux_sucres(),
        '/restauration_rapide': (context) => const res_rapide(),
        '/boisons_sucré': (context) => const BoissonsSucre(),
        '/boissons_alcool': (context) => const Alcool(),
        '/boissons_non_sucré': (context) => const BoissonsNonSucree(),
        '/poissons': (context) => const Poissons(),
        '/pain': (context) => const Pain(),
        '/formage': (context) => const Fromage(),
        '/viandes_abats': (context) => const viandesAbats(),
        '/volailles': (context) => const volailles(),
        '/oeufs': (context) => const oeufs(),
        '/plats_ com': (context) => const plats(),
        '/soupes_potages': (context) => const soupes(),
        '/categories': (context) => const myPage(),
        '/quantite': (context) => Quantite(),
        '/se_connecter_medecin': (context) => Seconnectermed(),
        '/create_med': (context) => const CreateMed(),
        '/create_patient': (context) => const CreatePat(),
        '/calcule': (context) => const myPage(),
        '/salades': (context) => const salades(),
        '/zgougou_sans_decorations': (context) => Zegougou(),
        '/accueil': (context) => Acceuil(),
        '/oeufdur': (context) => Oeufdur(),
        '/mdpoublier': (context) => oublier(),
        '/listepatient': (context) => MedecinHomePage(),
        '/salde_fruit_mer': (context) => SaladeFruitMer(),
        '/salade_lentielles': (context) => SaladeLentielles(),
        '/salade_riz_thon': (context) => SaladeRizThon(),
        '/salade_pomme_terre': (context) => SaladePommeTerre(),
        '/salade_concombre': (context) => SaladeConcombre(),
        '/salade_carotte_bettrave': (context) => SaladeCarotte(),
        "/salade_haricot_vert": (context) => SaladeHaricot(),
        "/salade_niçoise": (context) => SaladeNicoise(),
        "/salade_russe_vinaigrette": (context) => SaladeRusse(),
        "/salade_tomate": (context) => SaladeTomate(),
        "/salade_coeur_d'artichaut": (context) => SaladeCoeur(),
        '/salade_verte': (context) => SaladeVert(),
        '/salade_tunisienne_vinaigrette': (context) => SaladeTunisienne(),
        '/Brik_frit': (context) => BrikFrit(),
        '/brik_pomme_terre': (context) => BrikPommeTerre(),
        '/oeuf_brouillé': (context) => OeufBrouille(),
        '/oeuf_en_omelette': (context) => OeufEnOmelette(),
        '/oeuf_mayonnaise': (context) => OeufMayonnaise(),
        '/omlette_fromage': (context) => OeufFromage(),
        '/broudou_legumes': (context) => BroudouLegumes(),
        '/broudou_pomme_de_terre': (context) => BroudouPomme(),
        "/chorba_longue_d'oiseau": (context) => Chorbalangue(),
        '/chorba_orge': (context) => Chorbaorge(),
        '/makarouna_jaria': (context) => MakrounaJaria(),
      },
    );
  }
}
