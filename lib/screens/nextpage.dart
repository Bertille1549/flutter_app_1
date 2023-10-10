import 'package:flutter/material.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({Key? key}) : super(key: key);

  @override
  State<Nextpage> createState() => _ParamBody();
}

class _ParamBody extends State<Nextpage> {
@override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: const Text('Page suivante'),
      );
        
  }
}
