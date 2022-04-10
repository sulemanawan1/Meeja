import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
final String? name;
final void Function() func;

  MyButton({ required  this.name,required this.func}) ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:func, child:Text(name!),style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
        primary: Colors.redAccent


    ),);
  }
}
