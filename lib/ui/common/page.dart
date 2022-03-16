

import 'dart:ui';

import 'package:flutter/material.dart';
class AlicePage extends StatelessWidget {
  final String page;
  final int j;
  const AlicePage({Key key, this.page,this.j}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
        bottom: false,
        child:BackdropFilter(
    filter: new ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
    child :Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          child:
              Column(
                children: [
                  Container(
                    //color: Colors.yellow,
                    child: Container(height: 200,width: 300,
                      child:Container()
                      ),
                  ),
                ],
              ),),
    ));
  }
}