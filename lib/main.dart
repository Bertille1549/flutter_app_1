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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://cdn-gulli.jnsmedia.fr/var/jeunesse/storage/images/gulli/chaine-tv/series/championnes-a-tout-prix/14823894-22-fre-FR/Championnes-a-tout-prix.jpg', width: 300, height: 100, fit: BoxFit.scaleDown), //ajout d'une image')
            Image.asset('images/fond écran supergirl 1.jpg', width: 275, height: 200, fit: BoxFit.scaleDown), //ajout d'une image
            const Text(
              'Nombre :',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),      
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

          BottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
            selectedIndex: currentPageIndex,
              destinations: const <Widget>[
                NavigationDestination(
                  icon: Icon(Icons.home),
                  label: 'Accueil',
                ),
                NavigationDestination(
                  icon: Icon(Icons.),
                  label: 'Page suivante',
                ),
                NavigationDestination(
                  icon: Icon(Icons.),
                  label: 'Parametres',
                ),
              ],
          ),
        ]
      ),
    );
  }
}
