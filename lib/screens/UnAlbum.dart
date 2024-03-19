import 'package:flutter/material.dart';

class UnAlbum extends StatefulWidget {
  final String? nomAlbum;
  final String? description;
  final String? nomGroupe;
  final String? image;

  const UnAlbum({
    Key? key,
    this.nomAlbum,
    this.description,
    this.nomGroupe,
    this.image,
    }) : super(key: key);

  @override
  _UnAlbumState createState() => _UnAlbumState();
}

class _UnAlbumState extends State<UnAlbum> {
  late String? album;

  @override
  void initState() {
    super.initState();
    album = widget.nomAlbum!;
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
              /*
              IconButton(
                icon: Icon(
                  widget.favoriAlbum ? Icons.star : Icons.star_border,
                  color: widget.favoriAlbum ? Colors.black : null,
                ),
                
                onPressed: () {
                  //_toggleFavorite();
                },
              ),
              */
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
