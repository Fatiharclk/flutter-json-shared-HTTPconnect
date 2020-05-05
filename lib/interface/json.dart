import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

//fake api

/*
'{
    "username": "mobil",
    "password": "mobiluygulamagelistirme"
}'
*/ 
class Post{
  String username ="";
  String password ="";


  Post({this.username,this.password});

  factory Post.fromJson(Map< String, dynamic> json){

    return Post(
      username: json["username"],
      password: json["password"],

    );
  }

}

Future<Post> postuGetir( )async {
  final cevap= await http.get("http://yusufozgul.com:8282/login");

  if (cevap.statusCode==200){
    return Post.fromJson(json.decode(cevap.body));
  }
  else {
    throw Exception("Verileri getirilirken hata oluştu. Hata Kodu :${cevap.statusCode}");
  }

}





class JsonBaglanti extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title:Text("basitİşlem")),
      body: Center(
        child: FutureBuilder<Post>(
          future: postuGetir(),
          builder: (context,snapshot){
           if(snapshot.hasData){
             String userN = snapshot.data.username;
             String passwordN = snapshot.data.username;

             return
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("Gelen username: $userN"),
                 Text("Gelen username: $passwordN"),
                 


               ],

             );

           } 
           else if (snapshot.hasError){
             return Text("Hata oluştu: ${snapshot.error} ");
           }
           return CircularProgressIndicator();
          },

        ),

      ),


      
    );
  }
}


