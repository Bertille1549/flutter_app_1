import 'package:flutter/material.dart';

class UnAlbum extends StatefulWidget {
  final String? nomAlbum;
  final String? description;
  final String? nomGroupe;
  final String? image;
  //final bool favoriAlbum;
  //final Function(bool newFavorite) updateFavorite;

  const UnAlbum({
    Key? key,
    this.nomAlbum,
    this.description,
    this.nomGroupe,
    this.image,
    //required this.favoriAlbum,
    //required this.updateFavorite,
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
        title: Text(widget.nomAlbum ?? 'Détails de l\'album'),
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
              Text(widget.nomAlbum ?? 'Détails de l\'album :'),
              Text(widget.description ?? 'Description : '),
              Text(widget.nomGroupe ?? 'Nom du groupe : '),
              Text(widget.image ?? 'Image :'),
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
            ],
          ),
        ),
        //child: Text('Détails de l\'album : ${widget.nomAlbum}'),
      ),
    );
  }
}
