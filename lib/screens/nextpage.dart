import 'package:flutter/material.dart';
//import 'dart:math';

class Nextpage extends StatefulWidget {
  const Nextpage({Key? key}) : super(key: key);

  @override
  State<Nextpage> createState() => _NextPage();
}

class _NextPage extends State<Nextpage> {
  int random = 0;
  String textValue = "";
  List<String> listeDeValeur = List.generate(20, (index) => (index + 1).toString());
  int _valueDropDown = 1; // Initialisation de l'index sélectionné à 1

  // fonction qui permet d'afficher un toast
  void _showToast(BuildContext context, String _message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(_message),
      ),
    );
  }

  // fonction qui permet de savoir à quoi ressemblera le toast
  // et dans quelles conditions
  void _validateResult() {
    // ajouter ici la logique pour vérifier le résultat saisi
    // et afficher le toast en conséquence
    if (textValue.isNotEmpty && int.tryParse(textValue) == random && _valueDropDown == random) {
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
              Align(alignment: Alignment.center, 
              // ce qui permet d'afficher le nombre
              /*child:
              Text(
                '$random',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              */
            ), 
            ),
            

            // ajout du DropDownButton
            DropdownButton(
              value: _valueDropDown.toString(),
              items: listeDeValeur.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _valueDropDown = int.parse(newValue!);
                  random = _valueDropDown;
                });
              },
              icon: Icon(Icons.audiotrack),
              //icon: Icon(Icons.arrow_downward), // Ajout d'un icône
              // Change le style du texte
              // ajustement de la longueur du padding
              style: TextStyle(
                color: Colors.deepPurple,
              ),
              dropdownColor: Colors.lightGreen,
              padding: EdgeInsets.symmetric(horizontal: 10),
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
                setState(() {
                  //int intValue = Random().nextInt(20);
                  //random = intValue;

                });
                /*
                // Ajoutez ici la logique pour générer un nombre aléatoire.
                setState(() {
                  int intValue = Random().nextInt(20);
                  random = intValue;
                });
                */
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
