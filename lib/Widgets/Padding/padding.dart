import 'package:flutter/material.dart';
class MyPadding extends StatelessWidget {
  final  double? right;
  final  double? left;
  final  double? top;
  final  double? bottom;
  final  Widget? widget;

  const MyPadding({ this.right, this.left, this.top, this.bottom, this.widget, } );


  @override
  Widget build(BuildContext context) {
    return    Padding(padding: EdgeInsets.fromLTRB(left??0,
  top??0, right??0, bottom??0),child: widget,);
  }
}
