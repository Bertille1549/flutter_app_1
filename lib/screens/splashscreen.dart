
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/accueil.dart';
import 'package:splashscreen/splashscreen.dart';

class EcranDemarragePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen.timer(
      seconds: 5,
      navigateAfterSeconds: Accueil(),
      backgroundColor: Colors.green,
      title: Text('Gestion des albums', textScaleFactor: 2,),
      image: Image.network(
        'https://d1fmx1rbmqrxrr.cloudfront.net/cnet/optim/i/edit/2016/08/fabrication-vinyl__w770.jpg'
      ),
      loadingText: Text("Loading"),
      photoSize: 110.0,
      loaderColor: Colors.red,
    );
  }
}