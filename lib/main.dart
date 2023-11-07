//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/accueil.dart';
import 'package:flutter_application_1/screens/nextpage.dart';
import 'package:flutter_application_1/screens/settings.dart';

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
  int currentPageIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
      return new Accueil();  //Nom de votre StatefulWidget dans votre fichier Accueil
      case 1:
      return new Nextpage(); // Case Page suivante
      case 2:
      return new ParamBody(); // Case page paramètres
      default:
      return new Text('Erreur de page');
    }
  }
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        AppBar(
          key: Key('appBarPrincipale'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Aléatoire et Dés'),
        ),

        Expanded(
          child: Scaffold(
            body: _getDrawerItemWidget(currentPageIndex)
          )
        ),
        
        NavigationBar(
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
      ], // Children
    );
  }
}
