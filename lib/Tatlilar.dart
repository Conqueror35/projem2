
import 'package:flutter/material.dart';

import 'package:flutter_app/main.dart';

int baklava = 0;
int kunefe = 0;
int dondurma = 0;
int kazandibi = 0;


class Tatlilar extends StatefulWidget {
  @override
  _TatlilarState createState() => _TatlilarState();
}

class _TatlilarState extends State<Tatlilar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Tatlılar')),
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
                                flex: 2, child: Center(child: Text("Baklava"))),
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
                                                      baklava++;
                                                    });

                                                    //print("Baklava + Tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(baklava.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (baklava > 0) {
                                                        baklava--;
                                                      }
                                                    });
                                                    //print("Baklava - tıklandı");
                                                  }))),
                                    ])))
                          ]))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Colors.pink,
                          child: Column(children: <Widget>[
                            Expanded(flex: 2, child: Center(child: Text("Künefe"))),
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
                                                      kunefe++;
                                                    });

                                                    //print("Künefe + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(kunefe.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (kunefe > 0) {
                                                        kunefe--;
                                                      }
                                                    });

                                                    //print("Künefe - tıklandı");
                                                  }))),
                                    ])))
                          ]))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Colors.blueGrey,
                          child: Column(children: <Widget>[
                            Expanded(
                                flex: 2, child: Center(child: Text("Dondurma"))),
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
                                                      dondurma++;
                                                    });

                                                    //print("Dondurma + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(dondurma.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (dondurma > 0) {
                                                        dondurma--;
                                                      }
                                                    });

                                                    //print("Dondurma - tıklandı");
                                                  }))),
                                    ])))
                          ]))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Colors.purple,
                          child: Column(children: <Widget>[
                            Expanded(
                                flex: 2, child: Center(child: Text("Kazandibi"))),
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
                                                      kazandibi++;
                                                    });

                                                    // print("Kazandibi + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(kazandibi.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (kazandibi > 0) {
                                                        kazandibi--;
                                                      }
                                                    });

                                                    // print("Kazandibi - tıklandı");
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

                            // print("Ana Menü tıklandı");
                          }))
                ])));
  }
}