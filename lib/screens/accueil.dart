import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/album.dart';
import 'UnAlbum.dart';


class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => AccueilBody();
}

class AccueilBody extends State<Accueil> {
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

  // fonction pour onTap
  /*
  void navigateToAlbumDetails(String albumName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UnAlbum(nomAlbum: albumName),
      ),
    );
  }
  */

  void onAlbumClicked(String? nomAlbum, String? description, String? nomGroupe, String? image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UnAlbum(
          nomAlbum: nomAlbum,
          description: description,
          nomGroupe: nomGroupe,
          image : image,
        ),
      ),
    );
  }
  /*
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }
  */
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: ListView(
        // tp3
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: listeAlbums.map((albumInfo) {
          return Album(
            nomAlbum: albumInfo['nomAlbum'],
            description: albumInfo['description'],
            nomGroupe: albumInfo['nomGroupe'],
            image: albumInfo['image'],
            onAlbumClicked: onAlbumClicked,
            onTap: () {
              //navigateToAlbumDetails(albumInfo['nomAlbum']);
            },
          );

        }).toList(),
        /*
        children: <Widget>[
          Image.network('https://cdn-gulli.jnsmedia.fr/var/jeunesse/storage/images/gulli/chaine-tv/series/championnes-a-tout-prix/14823894-22-fre-FR/Championnes-a-tout-prix.jpg', width: 300, height: 100, fit: BoxFit.scaleDown),
          Image.asset('images/fond écran supergirl 1.jpg', width: 275, height: 200, fit: BoxFit.scaleDown),
          Align(alignment: Alignment.center, child: 
          const Text(
            'Nombre :',
          ),
          ),

          Align(alignment: Alignment.center, child: 
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          ), 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child:
                IconButton(
                  iconSize: 35.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  onPressed: _decrementCounter,
                  icon: Icon(Icons.remove_outlined),
                ),
              ),

              Container(
                child:
                IconButton(
                  iconSize: 35.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  icon: Icon(Icons.exposure_zero_outlined),
                  onPressed: _resetCounter,
                ),
              ),

              Container(
                child:
                IconButton(
                  iconSize: 35.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  icon: Icon(Icons.add_outlined),
                  onPressed: _incrementCounter,
                ),
              )

              /*
                IconButton(
                  iconSize: 35.0,
                  padding: EdgeInsets.only(left: 31.0),
                  onPressed: _decrementCounter,
                  icon: Icon(Icons.remove_outlined),
                ),

                IconButton(
                  iconSize: 35.0,
                  padding: EdgeInsets.only(left: 100.0),
                  icon: Icon(Icons.exposure_zero_outlined),
                  onPressed: _resetCounter,
                ),

                IconButton(
                  iconSize: 35.0,
                  padding: EdgeInsets.only(left: 120.0),
                  icon: Icon(Icons.add_outlined),
                  onPressed: _incrementCounter,
                ),
                */
                
            ],
          ),           
        ],
        */
      ),
    );   

          

    

  

  }
}
