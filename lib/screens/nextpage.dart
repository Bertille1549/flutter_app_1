import 'package:flutter/material.dart';
import 'dart:math';

class Nextpage extends StatefulWidget {
  const Nextpage({Key? key}) : super(key: key);

  @override
  State<Nextpage> createState() => _NextPage();
}

class _NextPage extends State<Nextpage> {
  int random = 0;
  String textValue = "";

  void _showToast(BuildContext context, String _message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(_message),
      ),
    );
  }

  void _validateResult() {
    // ajouter ici la logique pour vérifier le résultat saisi
    // et afficher le toast en conséquence
    if (textValue.isNotEmpty && int.tryParse(textValue) == random) {
      _showToast(context, 'Bravo, le résultat est correct !');
    }
    else {
      _showToast(context, 'Désolé, le résultat est incorrect.');
    }
  }

@override
  Widget build(BuildContext context) {
    return Container(
color: Colors.green,
        alignment: Alignment.center,       
        child: ListView(
          children: <Widget>[
            /*
            Align(alignment: Alignment.center, heightFactor: 15, child: 
              const Text('Page suivante'),
            ),
            */
            Padding(padding: EdgeInsets.only(top: 225.0), child: 
              Align(alignment: Alignment.center, /*heightFactor: 10,*/ child:
              Text(
                '$random',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ), 
            ),
            
            TextButton(
              child: const Text('Générer un nombre aléatoire'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                //padding: const EdgeInsets.all(10.0),
                //padding: const EdgeInsets.fromLTRB(250.0, 0, 250.0, 0),
                textStyle: const TextStyle(fontSize: 16),
                backgroundColor: Colors.blueGrey,
              ),
              
              onPressed: () {
                // Ajoutez ici la logique pour générer un nombre aléatoire.
                setState(() {
                  int intValue = Random().nextInt(50);
                  random = intValue;
                });
              },
              
            ),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 25,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              decoration: const InputDecoration(
                labelText: 'Entrer la solution',
                hintText: 'Entrer un nombre',
                border: OutlineInputBorder()
              ),
              onChanged: (value) => textValue = value,
            ),
            
            TextButton(
              child: const Text('Valider'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                //padding: const EdgeInsets.all(10.0),
                textStyle: const TextStyle(fontSize: 16),
                backgroundColor: Colors.blueGrey,
              ),
              
              onPressed: () {
                //print(textValue);
                _validateResult();
              },
              
            ),
          ],
        ),
      );
  }
}
