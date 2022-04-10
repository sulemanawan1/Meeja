import 'package:flutter/material.dart';
class MyTextButton extends StatelessWidget {
  final String? name;
  final void Function()? func;

  const MyTextButton({required this.name,required this.func});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: func, child: Text(name!,

      style: TextStyle(color: Colors.redAccent),


    ),);
  }
}
