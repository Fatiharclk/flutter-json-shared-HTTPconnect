import 'package:flutter/material.dart';





class AramaAppBar extends StatefulWidget {
  @override
  _AramaAppBarState createState() => _AramaAppBarState();
}

class _AramaAppBarState extends State<AramaAppBar> {
 //Baslıgı Tanımıyoruz
  Widget appBarbasligi= new Text("Array!");
//Icon Tanımı
  Icon tanimalam = new Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return new Scaffold
    (
      backgroundColor: Colors.black,
      //AppBar Tanımı
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: appBarbasligi,
        actions: <Widget>[
          new IconButton(
            icon: tanimalam,
            //Basılıdığı zaman 
            onPressed: (){
              setState(() {
                if(this.tanimalam.icon==Icons.search){
                //Icon seach ıkonune eşitse eger
                //ikonu close ikonuna çevir
                this.tanimalam = new Icon(Icons.close);
                //appbar başlıgı TextField ata
                this.appBarbasligi= new TextField(
                  style: new TextStyle(
                    color :Colors.white


                  ),
                  //önüne işaret ekle

                  decoration: new InputDecoration(
                    prefixIcon: new Icon(Icons.search, color :Colors.white),
                    //Görünmez yazı ve rengi
                    hintText: "ara",
                    hintStyle: new TextStyle(color: Colors.white)

                  )
                  
                );
               }
               else
               {
                 //Geri basıldıgında aynı şeylere çevir.
                this.tanimalam = new Icon(Icons.search);
                this.appBarbasligi = new Text("Array!",textAlign: TextAlign.center,);
               }
              });

            },

          ),
        ],
        
      ),





      body: new Center(
        child: new  GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 20,
  mainAxisSpacing: 20,
  crossAxisCount: 2,
  children: <Widget>[
  new GestureDetector(
    onTap: ()=> Navigator.pushNamed(context, "/Http"),
    child :Container(
      decoration: BoxDecoration(
     
      ),
      padding: const EdgeInsets.all(13),
      child: Transform(
        alignment: Alignment.centerLeft,
        transform: Matrix4.skewY(0.0,)..rotateZ(0.0),
        child: Container(
          padding: EdgeInsets.all(15.15),
          color: Color(0x99FFFFFFF),
          child: new Text("Ham!! \n Yemek Vaktii!! ",
          textAlign: TextAlign.center,),
        ),
      )
      
      
    ),
  ),  
new GestureDetector(
  onDoubleTap: ()=> Navigator.pushNamed(context, "/Login"),
    
    child :Container(
      //İmage yerleştirmek için yazılan kod satırı
      decoration: BoxDecoration(
        
      ),
      padding: const EdgeInsets.all(13),
      child: Transform(
        alignment: Alignment.centerLeft,
        transform: Matrix4.skewY(0.0,)..rotateZ(0.0),
        child: Container(
          padding: EdgeInsets.all(15.15),
          color: Color(0x99FFFFFFF),
          child: new Text("Json ",
          textAlign: TextAlign.center,),
        ),
      )
      
    ),
  ),
new GestureDetector(
  onDoubleTap: ()=> Navigator.pushNamed(context, "/Hellomain"),
    
    child :Container(
      decoration: BoxDecoration(
      
      ),
      padding: const EdgeInsets.all(13),
      child: Transform(
        alignment: Alignment.centerLeft,
        transform: Matrix4.skewY(0.0,)..rotateZ(0.0),
        child: Container(
          padding: EdgeInsets.all(15.15),
          color: Color(0x99FFFFFFF),
          child: new Text("Ham!! \n Yemek Vaktii!! ",
          textAlign: TextAlign.center,),
        ),
      )
      
      
    ),
  ),
 new GestureDetector(
  onDoubleTap: ()=> Navigator.pushNamed(context, "/Shared"),
    
    child :Container(
      decoration: BoxDecoration(
        
      ),
      padding: const EdgeInsets.all(13),
      child: Transform(
        alignment: Alignment.centerLeft,
        transform: Matrix4.skewY(0.0,)..rotateZ(0.0),
        child: Container(
          padding: EdgeInsets.all(15.15),
          color: Color(0x99FFFFFFF),
          child: new Text("Ham!! \n Yemek Vaktii!! ",
          textAlign: TextAlign.center,),
        ),
      )
      
    ),
  ),
  new GestureDetector(
    onLongPress: ()=> Navigator.pushNamed(context, "/json"),
  
    
    child :Container(
      decoration: BoxDecoration(
       
      ),
      padding: const EdgeInsets.all(13),
      child: Transform(
        alignment: Alignment.centerLeft,
        transform: Matrix4.skewY(0.0,)..rotateZ(0.0),
        child: Container(
          padding: EdgeInsets.all(15.15),
          color: Color(0x99FFFFFFF),
          child: new Text("Ham!! \n Yemek Vaktii!! ",
          textAlign: TextAlign.center,),
        ),
      )
      
    ),
  ),
  new GestureDetector(
  onDoubleTap: ()=> Navigator.pushNamed(context, "/Bildirimler"),
    
    child :Container(
      decoration: BoxDecoration(
        
      ),
      padding: const EdgeInsets.all(13),
      child: Transform(
        alignment: Alignment.centerLeft,
        transform: Matrix4.skewY(0.0,)..rotateZ(0.0),
        child: Container(
          padding: EdgeInsets.all(15.15),
          color: Color(0x99FFFFFFF),
          child: new Text("Ham!! \n Yemek Vaktii!! ",
          textAlign: TextAlign.center,),
        ),
      )
      
    ),
  ),
 
  new GestureDetector(
  onDoubleTap: ()=> Navigator.pushNamed(context, "/Bildirimler"),
    
    child :Container(
      //İmage yerleştirmek için yazılan kod satırı
      decoration: BoxDecoration(
      
      ),
      padding: const EdgeInsets.all(13),
      child: Transform(
        alignment: Alignment.centerLeft,
        transform: Matrix4.skewY(0.0,)..rotateZ(0.0),
        child: Container(
          padding: EdgeInsets.all(15.15),
          color: Color(0x99FFFFFFF),
          child: new Text("Ham!! \n Yemek Vaktii!! ",
          textAlign: TextAlign.center,),
        ),
      )
      
    ),
  ),
new GestureDetector(
  onDoubleTap: ()=> Navigator.pushNamed(context, "/Hellomain"),
    
    child :Container(
      decoration: BoxDecoration(
      
      ),
      padding: const EdgeInsets.all(13),
      child: Transform(
        alignment: Alignment.centerLeft,
        transform: Matrix4.skewY(0.0,)..rotateZ(0.0),
        child: Container(
          padding: EdgeInsets.all(15.15),
          color: Color(0x99FFFFFFF),
          child: new Text("Ham!! \n Yemek Vaktii!! ",
          textAlign: TextAlign.center,),
        ),
      )
      
      
    ),
  ),
 new GestureDetector(
  onDoubleTap: ()=> Navigator.pushNamed(context, "/Bildirimler"),
    
    child :Container(
      decoration: BoxDecoration(
       
      ),
      padding: const EdgeInsets.all(13),
      child: Transform(
        alignment: Alignment.centerLeft,
        transform: Matrix4.skewY(0.0,)..rotateZ(0.0),
        child: Container(
          padding: EdgeInsets.all(15.15),
          color: Color(0x99FFFFFFF),
          child: new Text("Ham!! \n Yemek Vaktii!! ",
          textAlign: TextAlign.center,),
        ),
      )
      
    ),
  ),
  new GestureDetector(
    onLongPress: ()=> Navigator.pushNamed(context, "/Hello"),
  
    
    child :Container(
      decoration: BoxDecoration(
       
      ),
      padding: const EdgeInsets.all(13),
      child: Transform(
        alignment: Alignment.centerLeft,
        transform: Matrix4.skewY(0.0,)..rotateZ(0.0),
        child: Container(
          padding: EdgeInsets.all(15.15),
          color: Color(0x99FFFFFFF),
          child: new Text("Ham!! \n Yemek Vaktii!! ",
          textAlign: TextAlign.center,),
        ),
      )
      
    ),
  ),
  new GestureDetector(
  onDoubleTap: ()=> Navigator.pushNamed(context, "/Bildirimler"),
    
    child :Container(
      decoration: BoxDecoration(
     
      ),
      padding: const EdgeInsets.all(13),
      child: Transform(
        alignment: Alignment.centerLeft,
        transform: Matrix4.skewY(0.0,)..rotateZ(0.0),
        child: Container(
          padding: EdgeInsets.all(15.15),
          color: Color(0x99FFFFFFF),
          child: new Text("Ham!! \n Yemek Vaktii!! ",
          textAlign: TextAlign.center,),
        ),
      )
      
    ),
  ),
 
  
     
    
  ],
)
      ),
      bottomNavigationBar: new BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          
          new BottomNavigationBarItem(
            
            icon: new Icon(Icons.home,color: Colors.green,),
            title: new Text(""),
            backgroundColor: Colors.white,
            
            ),
            new BottomNavigationBarItem(
            icon: new Icon(Icons.access_time,color: Colors.blue,),
            
            title: new Text("Time"),
            backgroundColor: Colors.red
            ),
            new BottomNavigationBarItem(
            icon: new Icon(Icons.add_a_photo, color: Colors.purple,),
            title: new Text("Add"),
            backgroundColor: Colors.red
            ),
            
          
        ],
            onTap:(int i){
              switch(i){
                case 0:
                debugPrint("Home buyonudur.");
                break;
                case 1:
                debugPrint("Time buyonudur.");
                break;
                case 2:
                debugPrint("Add buyonudur.");
                break;
              default:
              debugPrint("yok buyonudur.");
              break;
                

              }

            },

      ),
      
      drawer: new Drawer(
        child: new ListTile(
          leading: Icon(Icons.change_history),
          title: Text("Chance history"),
          onTap: (){
            Navigator.pop(context);

          },
        ),
      )

      



    );
  }
}

