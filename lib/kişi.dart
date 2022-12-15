import 'package:call_app/kayit.dart';
import 'package:call_app/main.dart';
import 'package:flutter/material.dart';

class kisi extends StatefulWidget {
  const kisi({Key? key}) : super(key: key);

  @override
  State<kisi> createState() => _kisiState();
}

class _kisiState extends State<kisi> {
  @override
  Widget build(BuildContext context) {
    var name;
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        //burada appbarın kenarlarını birazcık kestik
        shadowColor: Colors.white,
        //burada appbarın gölgelendirmesini sildik.
        leading:IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
          },
        ),
        //geriye dönüş tuşunu kodladım ve başa aldım
        title: Text("$name",style: TextStyle(color: Colors.white)),
        //isimleri buraya tuşlicam
        actions: [
          IconButton(onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>kayit()));
          } ,
          icon:Icon(Icons.edit_rounded,size: 100,color: Colors.white,)),
          //düzenleme ikonunu buraya koydum
        ],
      ),
      body: Column(
        //kişi sayfası burada olacak
        //üstte resim eklenen altta arayabildiğimiz ve editleyebildiğimiz kısım olacak
        //3'e böleceğim sayfayı
        children: [
          Expanded(
              child:Container(
                child: Center(
                  //burada kişinin resimleri yüklü olacak
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Icon(
                            size: 100,
                            color: Colors.greenAccent,
                            Icons.picture_in_picture_alt
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          Expanded(
            flex: 2,
              child:Container(
                color: Colors.deepPurpleAccent,
                child: Center(
                  //burada kişinin ismi
                  //arama iconu ve mesaj gönderme iconu olacak
                ),
              )
          ),
        ],
      ),
    );
  }
}

