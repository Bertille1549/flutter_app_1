import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
        //primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Découverte de Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int currentPageIndex = 0;
  int ind = 0;
  int random = 0;

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: <Widget>[
      // page accueil
        Container(
          child: ListView(
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
            ],
          ),
        ),
      // page suivante
      Container(
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
              onPressed: () {
                setState(() {
                  var intValue = Random().nextInt(_counter);
                  random = intValue;
                });
              },
            ),
          ],
        ),
      ),
      // page parametres
      Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: const Text('Parametres'),
      ),
      ][currentPageIndex],

      floatingActionButton: Stack(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left:31),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                onPressed: _decrementCounter,
                child: Icon(Icons.remove_outlined),), //Bouton au centre qui enlève 1
            ),
          ),

          Padding(padding: EdgeInsets.only(left:31),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                child: Icon(Icons.add_outlined),), //Bouton au centre qui ajoute 1
            ),
          ),

          Padding(padding: EdgeInsets.only(left:31),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                onPressed: _resetCounter,
                child: Icon(Icons.exposure_zero),), //Bouton au centre qui remet à zéro
            ),
          ),
        ],        
      ),
      
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            NavigationDestination(
              icon: Icon(Icons.skip_next),
              label: 'Page suivante',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Parametres',
            ),
          ],
      ),
    );
  }
}
