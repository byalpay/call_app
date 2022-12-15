import 'package:flutter/material.dart';

class kayit extends StatefulWidget {
  const kayit({Key? key}) : super(key: key);

  @override
  State<kayit> createState() => _kayitState();
}

class _kayitState extends State<kayit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.grey),
          onPressed: (){

          },
        ),
        //geriye dönüş tuşunu kodladım ve başa aldım
        backgroundColor: Colors.white,
        title: Text("",style: TextStyle(color: Colors.grey)),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>kayit()));
          },
              icon:
              Icon(Icons.edit)),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Bas"),
          onPressed: (){

          },
        ),
      ),
    );
  }
}
