
import 'package:flutter/material.dart';

import 'package:flutter_app/main.dart';

int kofteIzgara = 0;
int adanaIzgara = 0;
int tavukIzgara = 0;
int kuzuIzgara = 0;


class Izgaralar extends StatefulWidget {
  @override
  _IzgaralarState createState() => _IzgaralarState();
}

class _IzgaralarState extends State<Izgaralar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Izgaralar')),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Colors.yellow,
                          child: Column(children: <Widget>[
                            Expanded(
                                flex: 2,
                                child: Center(child: Text("Köfte Izgara"))),
                            Expanded(
                                flex: 2,
                                child: Center(
                                    child: Row(children: <Widget>[
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("+"),
                                                  onPressed: () {
                                                    setState(() {
                                                      kofteIzgara++;
                                                    });

                                                    //print("Köfte + Tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(kofteIzgara.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (kofteIzgara > 0) {
                                                        kofteIzgara--;
                                                      }
                                                    });
                                                    //print("Köfte - tıklandı");
                                                  }))),
                                    ])))
                          ]))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Colors.pink,
                          child: Column(children: <Widget>[
                            Expanded(
                                flex: 2,
                                child: Center(child: Text("Adana Izgara"))),
                            Expanded(
                                flex: 2,
                                child: Center(
                                    child: Row(children: <Widget>[
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("+"),
                                                  onPressed: () {
                                                    setState(() {
                                                      adanaIzgara++;
                                                    });

                                                    //print("Adana + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(adanaIzgara.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (adanaIzgara > 0) {
                                                        adanaIzgara--;
                                                      }
                                                    });

                                                    //print("Adana - tıklandı");
                                                  }))),
                                    ])))
                          ]))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Colors.blueGrey,
                          child: Column(children: <Widget>[
                            Expanded(
                                flex: 2,
                                child: Center(child: Text("Tavuk Izgara"))),
                            Expanded(
                                flex: 2,
                                child: Center(
                                    child: Row(children: <Widget>[
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("+"),
                                                  onPressed: () {
                                                    setState(() {
                                                      tavukIzgara++;
                                                    });

                                                    //print("Tavuk + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(tavukIzgara.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (tavukIzgara > 0) {
                                                        tavukIzgara--;
                                                      }
                                                    });

                                                    //print("Tavuk - tıklandı");
                                                  }))),
                                    ])))
                          ]))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Colors.purple,
                          child: Column(children: <Widget>[
                            Expanded(
                                flex: 2, child: Center(child: Text("Kuzu Izgara"))),
                            Expanded(
                                flex: 2,
                                child: Center(
                                    child: Row(children: <Widget>[
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("+"),
                                                  onPressed: () {
                                                    setState(() {
                                                      kuzuIzgara++;
                                                    });

                                                    //print("Kuzu + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(kuzuIzgara.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (kuzuIzgara > 0) {
                                                        kuzuIzgara--;
                                                      }
                                                    });

                                                    //print("Kuzu - tıklandı");
                                                  }))),
                                    ])))
                          ]))),
                  Expanded(
                      flex: 3,
                      child: FloatingActionButton(
                          child: Container(
                              color: Colors.deepOrange, child: Text("Ana Menü")),
                          onPressed: () {
                            Navigator.pop(context);

                            //print("Ana Menü tıklandı");
                          }))
                ])));
  }
}