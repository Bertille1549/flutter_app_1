import 'package:flutter/material.dart';
//import 'package:flutter_application_1/screens/accueil.dart';

class UnAlbum extends StatefulWidget {
  final String? nomAlbum;
  final String? description;
  final String? nomGroupe;
  final String? image;
  final bool favoriAlbum;
  final List<Map<String, dynamic>> listeAlbums; // ajout de la liste d'albums

  const UnAlbum({
    Key? key,
    this.nomAlbum,
    this.description,
    this.nomGroupe,
    this.image,
    required this.favoriAlbum,
    required this.listeAlbums, // ajout de la liste d'albums comme paramètre requis
    }) : super(key: key);

  @override
  _UnAlbumState createState() => _UnAlbumState();
}

class _UnAlbumState extends State<UnAlbum> {
  late String? album;
  late List<Map<String, dynamic>> listeAlbums; // déclaration de la liste d'albums
  late bool favoriAlbum; // déclaration d'1 variable locale pour favoriAlbum

  @override
  void initState() {
    super.initState();
    album = widget.nomAlbum!;
    listeAlbums = widget.listeAlbums; // initialisation de la liste d'albums
    favoriAlbum = widget.favoriAlbum; // initalisation de favoriAlbum avec la valeur de widget.favoriAlbum
  }


  void _toggleFavorite(String rechercheIndex) {
    int index = listeAlbums.indexWhere((element) => element['nomAlbum'] == rechercheIndex);
    setState(() {
      favoriAlbum = !widget.favoriAlbum;
      if (index != -1) {
        listeAlbums[index]['favori'] = widget.favoriAlbum;
      }
    });
    Navigator.pop(context, favoriAlbum);
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        // titre de la page
        title: Text('Information sur l\'album'),
        // ajout bouton dans barre d'application
        leading: IconButton(
          onPressed: () {
            // utiliser Navigator.pop pour revenir à l'écran précédent
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Card(
          child: Column(
            children: <Widget>[
              // icone pour mettre en favori
              IconButton(
                alignment: Alignment.topRight,
                iconSize: 36,
                icon: Icon(
                  widget.favoriAlbum ? Icons.star : Icons.star_border,
                  color: widget.favoriAlbum ? Colors.black : null,
                ),
                onPressed: () {
                  _toggleFavorite(widget.nomAlbum!); // fournir le nom de l'album comme argument
                },
              ),
              
              // pour afficher l'image dans un cercle
              ClipOval(
                child: Image.asset("images/" + widget.image!,
                fit: BoxFit.cover,
                ),
              ),
              Text("\n"),
              //Image.asset("images/" + widget.image!),
              // affiche le titre de l'album
              Text(widget.nomAlbum!, style: TextStyle(fontSize: 24),),
              Text("\n"),
              Text("Groupe : " + widget.nomGroupe!, style: TextStyle(fontSize: 18),),
              Text("\n"),
              Text("Informations supplémentaires :"),
              Text("\n"),
              Text(widget.description!),
            ],
          ),
        ),
      ),
    );
  }
}
