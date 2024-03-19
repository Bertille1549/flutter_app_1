import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_application_1/screens/UnAlbum.dart';

class Album extends StatelessWidget {
    Album({Key? key, this.nomAlbum, this.description, this.nomGroupe, this.image, this.onTap, this.onAlbumClicked,}) 
      : super(key: key); 
   final String? nomAlbum; 
   final String? description;
   //final Int? nomGroupe;  
   final String? nomGroupe; 
   final String? image; 
   final VoidCallback? onTap;
   final Function(String?, String?, String?, String?)? onAlbumClicked;

   Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // aide de chatGPT car je ne comprenais pas
        if (onAlbumClicked != null) {
          onAlbumClicked! (nomAlbum, description, nomGroupe, image);
        }
      },
      //onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(2), height: 120,  child: Card( 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, children:    <Widget>[
              Image.asset("images/" +image!), Expanded(
                child: Container(
                  padding: EdgeInsets.all(5), child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                    children: <Widget>[ 
                              
                      Text(this.nomAlbum!, style: TextStyle(fontWeight: 
                        FontWeight.bold)), Text(this.description!), 
                      Text("Groupe: " + this.nomGroupe.toString()), 
                    ], 
                  )
                )
              )
            ]
          )
        )
      ),
    );
   }
}
