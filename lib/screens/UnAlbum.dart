import 'package:flutter/material.dart';

class UnAlbum extends StatefulWidget {
  final String? nomAlbum;
  final String? description;
  final String? nomGroupe;
  final String? image;

  const UnAlbum({Key? key, this.nomAlbum, this.description, this.nomGroupe, this.image}) : super(key: key);

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
      ),
      body: Center(
        child: Card(
          child: Column(
            children: <Widget>[
            Text(widget.nomAlbum ?? 'Détails de l\'album :'),
            Text(widget.description ?? 'Description : '),
            Text(widget.nomGroupe ?? 'Nom du groupe : '),
            Text(widget.image ?? 'Image :'),
          ],
          ),
        ),
        //child: Text('Détails de l\'album : ${widget.nomAlbum}'),
      ),
    );
  }
}
