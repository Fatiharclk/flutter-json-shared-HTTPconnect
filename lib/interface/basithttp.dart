import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BasitHttp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HttpState();
  

}
class HttpState extends State<BasitHttp>{

  String veri;
  getIslemiYap(){
    http.get("http://yusufozgul.com:8282/login").then((cevap){
      print(cevap.statusCode);
      print(cevap.body);
      setState(() {
        veri= cevap.body;
      });
    });
    print("get butonu");

  }



  var body = jsonEncode({"username":"mobil",
    "password": "mobiluygulamagelistirme"});
  
  postIslemiYap(){
    http.post("http://yusufozgul.com:8282/login",body : body
    ).then((cevap){
      setState(() {
        print(cevap.statusCode);
       veri =cevap.body;
      });

    });
    print("post butonu butonu");

  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(title : Text("Basit Htpp")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child:
                RaisedButton(
                  color: Colors.blue,
                  child: 
                  Text("GET"),
                onPressed: getIslemiYap,
                ),
                
                
                
                ),
              Expanded(
                child:
                RaisedButton(
                  child: 
                  Text("POST"),
                onPressed: 
                postIslemiYap,),
                
                
              )
              
            



            ],
          
          
           
           ),
          Expanded(child: Center(
            child:  Text("Gelen Veri \n $veri"),
          ))

        ],


      ),
    );
  }
  
}


