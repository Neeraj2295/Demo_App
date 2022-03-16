
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:page_turn/page_turn.dart';
import 'package:page_turn_example/ui/home/model.dart';
import '../common/index.dart';
import 'package:http/http.dart' as http;


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

const kUrl1 = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';
class _HomeScreenState extends State<HomeScreen> {
  final _controller = GlobalKey<PageTurnState>();
  ImageModel log;
  bool isLoading ;
   final List<String> images = [
    "assets/pexels-dzenina-lukac-1583884.jpg",
    "assets/271679.jpg",
    "assets/7cb18679659f791b1191bea97b74dfc0.jpg",
    "assets/pexels-valeria-boltneva-842571.jpg",
    "assets/WallpaperDog-5548580.jpg",
    "assets/WallpaperDog-20491951.jpg",
    "assets/WallpaperDog-20491955.jpg",
    "assets/pexels-dzenina-lukac-1583884.jpg",
    "assets/271679.jpg",
    "assets/7cb18679659f791b1191bea97b74dfc0.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(image: DecorationImage(
        image: AssetImage("assets/pexels-valeria-boltneva-842571.jpg"),fit: BoxFit.cover
      )),
      padding: EdgeInsets.only(top: 100,bottom: 100),
      child: Container(decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage("assets/9877407.jpg"),fit: BoxFit.cover
      )),
        padding: EdgeInsets.only(top: 20,bottom: 20),
        child: PageTurn(
            key: _controller,
            backgroundColor: Colors.white,
            showDragCutoff: false,
            lastPage: Container(child: Center(child: Text('Last Page!'))),
            children: <Widget>[
              for (var i = 0; i < 9; i++) AlicePage(page:images[i],j:i),
            ],
          ),
      ),
      );
  }
}
