import 'package:flutter/material.dart';
import 'package:new1/interface/Bildirimler.dart';
import 'package:new1/interface/Haberler.dart';
import 'package:new1/interface/Hello.dart';
import 'package:new1/interface/basithttp.dart';
import 'package:new1/interface/json.dart';
import 'package:new1/interface/login.dart';
import 'package:new1/interface/shared.dart';
import './interface/appBar.dart';
void main(){

runApp(

News()

);
}


class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:"/" ,
      routes: {
        "/":(context) => AramaAppBar(),
        "/ilksayfa" :(context) => Hellomain(),
        "/Haberler" :(context) => Haberler(),
        "/Bildirimler" : (context) => Bildirimler(),
        "/Shared" : (context) => Shared(),
        "/json" : (context) => JsonBaglanti(),
        "/Http" : (context) => BasitHttp(),
        "/Login" : (context) => Login(),

      },
    );
  }
}

//Rotules -rotalar
//Gesture dedector -Ekran etkleşimleri