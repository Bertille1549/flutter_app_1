import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _ParamBody();
}

class _ParamBody extends State<Accueil> {
@override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: const Text('Nombre :'),
      );
        
  }
}
