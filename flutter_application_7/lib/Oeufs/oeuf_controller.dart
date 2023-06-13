import 'package:flutter_application_7/Model/repas.dart';

class OeufsController {
  final List<Repas> li = [
    Repas(name: "Brik frit(oeuf, thon, pomme de terre) ", lien: '/Brik_frit'),
    Repas(name: "Brik à la pomme de terre ", lien: 'brik_pomme_terre'),
    Repas(name: "Oeuf dur", lien: '/oeufdur'),
    Repas(name: "Oeuf à la mayonnaise", lien: '/oeuf_mayonnaise'),
    Repas(name: "Oeuf brouillé au beurre ", lien: '/oeuf_brouillé'),
    Repas(name: "Oeuf en omelette", lien: '/oeuf_en_omelette'),
    Repas(name: "Oeuf au fromage ou au thon", lien: '/omlette_fromage'),
  ];
}
