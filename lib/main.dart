import 'package:call_app/ki%C5%9Fi.dart';
import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
      body: Center(
        child: ElevatedButton(
          child: Text("Bas"),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>kisi()));
          },
        ),
      ),
    );
  }
}
