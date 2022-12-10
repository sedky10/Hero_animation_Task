import 'package:flutter/material.dart';

class SlidrRight extends PageRouteBuilder {
  final page;

  SlidrRight({this.page})
      : super(
            pageBuilder: (context, animation, animationtwo) => page,
            transitionsBuilder: (context, animation, animationtwo, child){
              return
            });
}
