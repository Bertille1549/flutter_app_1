import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/album.dart';

class ParamBody extends StatefulWidget {
  const ParamBody({Key? key}) : super(key: key);

  @override
  State<ParamBody> createState() => _ParamBody();
}

class _ParamBody extends State<ParamBody> {
  // création d'une liste de maps
  List<Map<String, dynamic>> listeAlbums = [
    // album Metallica
    {
      'nomAlbum' : 'Metallica',
      'description': "L'album marque une évolution importante dans le style du groupe. Les tempos sont plus lents, les morceaux plus courts et leurs structures beaucoup plus simples, aspirant ainsi à du simple rock. C'est principalement un album de heavy metal, et il n'y a plus beaucoup de traces de trash metal. ",
      'nomGroupe' : 'Metallica',
      'image': "Metallica.jpg",
    },
    // album Ride the Lightning
    {
      'nomAlbum' : 'Ride the lightning',
      'description': "Ride the Lightning est considéré comme l'un des classiques du trash metal et comme une transition entre les débuts de Metallica, Kill'em All et Master of Puppets, plus mélodique et progressif. ",
      'nomGroupe' : 'Metallica',
      'image': "Ride the lightning.jpg",
    },
    // album Master of Puppets
    {
      'nomAlbum' : 'Master of Puppets',
      'description': "Master of Puppets a reçu des critiques dithyrambiques par la critique musicale et a été inclus dans les meilleures listes d'albums par certains magazines. Sa puissance, sa virtuosité et ses paroles politiques et colériques ont attiré les éloges de la critique en dehors de la communauté metal. L'album est largement considéré comme le plus gros effort du groupe à l'époque, et devenu l'un des albums de trash metal les plus influents de tous les temps. ",
      'nomGroupe' : 'Metallica',
      'image': "Master of puppets.jpg",
    },
    // album And Justice for All
    {
      'nomAlbum' : 'And Justice for All',
      'description': "Le titre de l'album est une allusion aux quatre derniers mots du serment d'allégeance au drapeau des Etats-Unis. Les chansons de ...And Justices For All ont pour thèmes la douleur (Harvester of Sorrow), l'injustice (...And Justice for All), la folie (The Frayed Ends of Sanity) et la mort (To Live Is To Die). ",
      'nomGroupe' : 'Metallica',
      'image': "And justice for all.jpg",
    },
    // album Hardwired
    {
      'nomAlbum' : 'Hardwired',
      'description': "C'est le premier album studio de Metallica depuis Death Magnetic en 2008 et Lulu avec lou Reed en 2011, leur second double album (après Lulu) et leur premier à sortir via leur label indépendant, Blackened Recordings. ",
      'nomGroupe' : 'Metallica',
      'image': "Hardwired.jpg",
    },
    // album Kill'em All
    {
      'nomAlbum' : "Kill'em All",
      'description': "Cet album marque le début d'une des légendes du trash metal. Plus rapide que ses successeurs, cet album est considéré comme incontournable par les fans. Le tempo de la plupart des chansons de l'album est très rythmé et ultra rapide. ",
      'nomGroupe' : 'Metallica',
      'image': "Kill'em all.jpg",
    },
  ];

@override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        alignment: Alignment.center,
        //child: const Text('Paramètres'),

        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: listeAlbums.map((albumInfo) {
            return Album(
              nomAlbum: albumInfo['nomAlbum'],
              description: albumInfo['description'],
              nomGroupe: albumInfo['nomGroupe'],
              image: albumInfo['image'],
            );

          }).toList(),
        ),
      );
        
  }
}
