import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/album.dart';

class ParamBody extends StatefulWidget {
  const ParamBody({Key? key}) : super(key: key);

  @override
  State<ParamBody> createState() => _ParamBody();
}

class _ParamBody extends State<ParamBody> {
  // création d'une liste de maps vide
  //List<Map<String, dynamic>> listeAlbums = [];
  List<Map<String, dynamic>> listeAlbums = [];

  // ajout de maps à la liste
  //listeAlbums.add({Album.nomAlbum : "Metallica",})
@override
  Widget build(BuildContext context) {
    /*
    listeAlbums.add({"Metallica", "L'album marque une évolution importante dans le style du groupe. Les tempos sont plus lents, les morceaux plus courts et leurs structures beaucoup plus simples, aspirant ainsi à du simple rock. C'est principalement un album de heavy metal, et il n'y a plus beaucoup de traces de thrash metal. ", "Metallica", "Metallica.jpg"});
    listeAlbums.add({"Ride the lightning", ""});
    */
    return Container(
        color: Colors.blue,
        alignment: Alignment.center,
        //child: const Text('Paramètres'),

        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget> [
            // ajout de maps à la liste
            
            // album metallica
            Album(
              nomAlbum: "Metallica",
              description: "L'album marque une évolution importante dans le style du groupe. Les tempos sont plus lents, les morceaux plus courts et leurs structures beaucoup plus simples, aspirant ainsi à du simple rock. C'est principalement un album de heavy metal, et il n'y a plus beaucoup de traces de thrash metal. ",
              nomGroupe: "Metallica",
              //image: "Metallica.jpg",
              image: "Metallica.jpg",
            ),

            // album ride the lightning
            Album(
              nomAlbum: "Ride the lightning",
              description: "Ride the Lightning est considéré comme l'un des classiques du trash metal et comme une transition  entre les débuts de Metallica, Kill'em All et Master of Puppets, plus mélodique et progressif ",
              nomGroupe: "Metallica",
              //image: "Metallica.jpg",
              image: "Ride the lightning.jpg",
            ),

            // album master of puppets
            Album(
              nomAlbum: "Master of Puppets",
              description: "Master of Puppets a reçu des critiques dithyrambiques par la critique musicale et a été inclus dans les meilleures listes d'albums par certains magazines. ",
              nomGroupe: "Metallica",
              //image: "Metallica.jpg",
              image: "Master of puppets.jpg",
            ),

            // album 
            Album(
              nomAlbum: "Metallica",
              description: "L'album marque une évolution importante dans le style du groupe. Les tempos sont plus lents, les morceaux plus courts et leurs structures beaucoup plus simples, aspirant ainsi à du simple rock. C'est principalement un album de heavy metal, et il n'y a plus beaucoup de traces de thrash metal. ",
              nomGroupe: "Metallica",
              //image: "Metallica.jpg",
              image: "Metallica.jpg",
            ),

            // album 
            Album(
              nomAlbum: "Metallica",
              description: "L'album marque une évolution importante dans le style du groupe. Les tempos sont plus lents, les morceaux plus courts et leurs structures beaucoup plus simples, aspirant ainsi à du simple rock. C'est principalement un album de heavy metal, et il n'y a plus beaucoup de traces de thrash metal. ",
              nomGroupe: "Metallica",
              //image: "Metallica.jpg",
              image: "Metallica.jpg",
            ),

          ],
        ),
      );
        
  }
}
