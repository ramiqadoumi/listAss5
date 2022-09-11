import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List name = [
    "Fine Kunafa",
    "Halawt Aljibn",
    "Turkish Cake",
    "Mamol Tamer",
    "Baqlawa"
  ];
  List price = [5, 5.5, 4, 6, 18];
  List image = [
    "images/fine.jpg",
    "images/halaweh.jpg",
    "images/cake.jpg",
    "images/mamol.jpg",
    "images/baqlawa.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[500],
        ),
        body: ListView(children: [
      ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: image.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(10),
            child: ListTile(
              trailing: Icon(Icons.shop,color: Colors.orange[500],),
              leading: Image(image: AssetImage("${image[index]}")),
              title: Text("${name[index]}",style: TextStyle(fontWeight: FontWeight.bold,),),
              subtitle: Text("${price[index]} JD/KG",style: TextStyle(color: Colors.orange.shade500),),
            ),
          );
        },
      ),
    
    ]
    ),
      )
      );

  }
}
