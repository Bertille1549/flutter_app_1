import 'package:flutter/material.dart';


class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => AccueilBody();
}

class AccueilBody extends State<Accueil> {
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
    
    return Container(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child:
                IconButton(
                  iconSize: 35.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  onPressed: _decrementCounter,
                  icon: Icon(Icons.remove_outlined),
                ),
              ),

              Container(
                child:
                IconButton(
                  iconSize: 35.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  icon: Icon(Icons.exposure_zero_outlined),
                  onPressed: _resetCounter,
                ),
              ),

              Container(
                child:
                IconButton(
                  iconSize: 35.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  icon: Icon(Icons.add_outlined),
                  onPressed: _incrementCounter,
                ),
              )

              /*
                IconButton(
                  iconSize: 35.0,
                  padding: EdgeInsets.only(left: 31.0),
                  onPressed: _decrementCounter,
                  icon: Icon(Icons.remove_outlined),
                ),

                IconButton(
                  iconSize: 35.0,
                  padding: EdgeInsets.only(left: 100.0),
                  icon: Icon(Icons.exposure_zero_outlined),
                  onPressed: _resetCounter,
                ),

                IconButton(
                  iconSize: 35.0,
                  padding: EdgeInsets.only(left: 120.0),
                  icon: Icon(Icons.add_outlined),
                  onPressed: _incrementCounter,
                ),
                */
                
            ],
          ),           
        ],
      ),
    );   

          

    

  

  }
}
