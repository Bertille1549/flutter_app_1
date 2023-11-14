import 'package:flutter/material.dart';
//import 'dart:math';

class Nextpage extends StatefulWidget {
  const Nextpage({Key? key}) : super(key: key);

  @override
  State<Nextpage> createState() => _NextPage();
}

class _NextPage extends State<Nextpage> {
  //int _counter = 0;
  int random = 0;

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
                padding: const EdgeInsets.all(10.0),
                textStyle: const TextStyle(fontSize: 16),
                backgroundColor: Colors.blueGrey,
              ),
              
              onPressed: () {/*
                setState(() {/*
                  var intValue = Random().nextInt(_counter);
                  random = intValue;*/
                });*/
              },
              
            ),
          ],
        ),
      );
        
  }
}
