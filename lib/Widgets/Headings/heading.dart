
import 'package:flutter/material.dart';
class Heading extends StatelessWidget {

  final String name;

  const Heading({ required this.name});

  @override
  Widget build(BuildContext context) {
    return   Padding(padding: EdgeInsets.fromLTRB(15, 10,15, 10),
      child: Row(
        children: [
          Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        ],
      ),
    )
    ;
  }
}
