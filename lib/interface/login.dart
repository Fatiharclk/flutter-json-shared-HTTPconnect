import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


String isim = "";
String soyisim = "";

final idController = TextEditingController();
final passwordContorller =TextEditingController();
final genelCtrl = GlobalKey<FormState>();









class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


var id= idController.text;
var pasword = passwordContorller.text;

var veri = "";
var body = jsonEncode({"username": idController.text,
    "password": passwordContorller.text});


  


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
      appBar: AppBar(title: Text("Login")),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
                validator: (deger){
                 
                    if(deger.length < 3){
                    return "Lütfen ismizi yazınız";
                    }
                },
                controller: idController,
                decoration: InputDecoration(hintText: "İsmizi Giriniz"),
              ),
              TextFormField(
                validator: (deger){
                   if(deger.length < 3){
                    return "Lütfen ismizi yazınız";
                    }
                },
                controller: passwordContorller,
                decoration: InputDecoration(hintText: "Soy İsminizi  Giriniz"),
              ),


                Expanded(
                    child:Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.green,
                        child: Text("Kaydet", style: TextStyle(color: Colors.white),),
                        onPressed: () {
                          postIslemiYap();
                          print(veri);
                          print(body);
                          print(id);
                          
                          
                        }
                         
                        

                      ),
                      
                    ) ,
                    ),

        ],
        
        
      ),
      

      
    );
  }
}