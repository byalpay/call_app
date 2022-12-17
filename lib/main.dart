import 'package:call_app/kayit.dart';
import 'package:call_app/kisi.dart';
import 'package:call_app/kisiler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {


  bool aramaYapiliyorMu=false;
  String aramaKelimesi="";

  Future<List<kisiler>> tumKisileriGoster() async{
    var kisilerListesi=<kisiler>[];

    var kisi1=kisiler(1, "Berkan Yasin", "Alpay", "905304490360");
    kisilerListesi.add(kisi1);
    return kisilerListesi;
  }

  Future<void > sil(int kisi_id) async{
    print("$kisi_id silindi");
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:TextFormField(

        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        actions: [
          IconButton(
              onPressed: (){
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      //body de listview kullanacaz verileri buradan aratacaz
      //isim soyisim numara vs vs.
      body: FutureBuilder<List<kisiler>>(
        future: tumKisileriGoster(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var kisilerListesi=snapshot.data;
            return ListView.builder(
              itemCount:kisilerListesi!.length,
              itemBuilder: (context, index){
                var kisi=kisilerListesi[index];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>kayit()));
                  },
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(kisi.name,style:TextStyle(fontWeight: FontWeight.bold)),
                        Text(kisi.rename,style: TextStyle(),),
                        Text(kisi.number),
                        IconButton(icon: Icon(Icons.call),
                        onPressed: () async{
                          FlutterPhoneDirectCaller.callNumber(kisi.number);
                        },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          else{
            return Center();
          }
        },
      ),
    );
  }
}

