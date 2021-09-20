// @dart=2.9
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sort/sort.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var contact = [
    {
      "name": "Izaz Dhiyaulhaq",
      "handphone": "082323731302",
      "email": "izaz@gmail.com",
      "photo": "images/1.jpg",
    },
    {
      "name": "Kanzul Fiqri",
      "handphone": "081234567890",
      "email": "kanzul@gmail.com",
      "photo": "images/2.jpg",
    },
    {
      "name": "Fiesta Putra Reifa Al Ghifar New",
      "handphone": "081678902345",
      "email": "fiesta@gmail.com",
      "photo": "images/3.jpg",
    },
    {
      "name": "Muhtadin Nurilhaq",
      "handphone": "089021678345",
      "email": "muhtadin@gmail.com",
      "photo": "images/4.jpg",
    },
    {
      "name": "Mahesa Riski Pratama",
      "handphone": "089078345216",
      "email": "mahesa@gmail.com",
      "photo": "images/5.jpg",
    },
    {
      "name": "Daniel Purnomo",
      "handphone": "085903478216",
      "email": "daniel@gmail.com",
      "photo": "images/6.jpg",
    },
    {
      "name": "Ahmad Zidni Zainul Ikhsan",
      "handphone": "085982103476",
      "email": "zidni@gmail.com",
      "photo": "images/7.jpg",
    },
    {
      "name": "Afif Nuruddin",
      "handphone": "085347698210",
      "email": "afif@gmail.com",
      "photo": "images/8.jpg",
    },
    {
      "name": "Naufal Zakly Santoso",
      "handphone": "085348210769",
      "email": "naufal@gmail.com",
      "photo": "images/9.jpg",
    },
    {
      "name": "Muhammad Sofiyulloh",
      "handphone": "082107653489",
      "email": "sofi@gmail.com",
      "photo": "images/10.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    contact.simpleSort(sortBy: "name");

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("List Contact"),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    title: Text(contact.elementAt(index).values.elementAt(0),
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                        contact.elementAt(index).values.elementAt(1) +
                            ' | ' +
                            contact.elementAt(index).values.elementAt(2)),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                          contact.elementAt(index).values.elementAt(3)),
                    )),
              );
            },
            itemCount: contact.length,
          ),
        ));
  }
}
