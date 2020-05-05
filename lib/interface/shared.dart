import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fluttertoast/fluttertoast.dart';

class Shared extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SharedState(); 
    
}

class SharedState extends State<Shared>{
  final isimController = TextEditingController();
  final soyisimContorller =TextEditingController();
  final genelCtrl = GlobalKey<FormState>();

  String isim = "";
  String soyisim = "";
  bool kayit_durumu = false;
  int kayitno = 0;



  @override
  void dispose() {
    isimController.dispose();
    soyisimContorller.dispose();

    super.dispose();
  }

  void kayitYap(String gIsim,String gSoyisim) async{
    final kayitAraci = await SharedPreferences.getInstance();
    if (genelCtrl.currentState.validate()){
      kayitAraci.setBool("durum", true);
      kayitAraci.setInt("kayitno", 1);
      kayitAraci.setString("isim", gIsim);
      kayitAraci.setString("isim", gSoyisim);

      Fluttertoast.showToast(
        msg: "kayıt başarı bir şekilde gerçekleşti",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,

        );


    }


  }  
  void kayitGoster(){

  }

  void kayitSil(){


  }






  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title : Text("Shared")),
      body: Form(
        key : genelCtrl,
        child : Padding(
          padding : EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (deger){
                 
                    if(deger.length < 3){
                    return "Lütfen ismizi yazınız";
                    }
                },
                controller: isimController,
                decoration: InputDecoration(hintText: "İsmizi Giriniz"),
              ),
              TextFormField(
                validator: (deger){
                   if(deger.length < 3){
                    return "Lütfen ismizi yazınız";
                    }
                },
                controller: soyisimContorller,
                decoration: InputDecoration(hintText: "Soy İsminizi  Giriniz"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child:Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.green,
                        child: Text("Kaydet", style: TextStyle(color: Colors.white),),
                        onPressed: () {

                          kayitYap(isimController.text,soyisimContorller.text);
                        }
                         
                        

                      ),
                      
                    ) ,
                    ),
                     Expanded(
                    child:Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.blue,
                        child: Text("Getir", style: TextStyle(color: Colors.white),),
                        onPressed: (){
                          
                        },

                      ),
                      
                    ) ,
                    ),
                     Expanded(
                    child:Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.red,
                        child: Text("Sil", style: TextStyle(color: Colors.white),),
                        onPressed: (){
                          
                        },

                      ),
                      
                    ) ,
                    )
                    




                ],
                
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child : 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("İsim"),
                      Text("Soyisim"),
                      Text("Kayıt durumu"),
                      Text("Kayıt Numarası")






                  ],)
                  )
                )





            ],


          ),
        ),
      ),




    );
  }

}