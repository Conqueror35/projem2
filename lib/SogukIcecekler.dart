import 'package:flutter/material.dart';

import 'package:flutter_app/main.dart';

int su = 0;
int soda = 0;
int pepsi = 0;
int meyveSuyu = 0;

class SogukIcecekler extends StatefulWidget {
  @override
  _SogukIceceklerState createState() => _SogukIceceklerState();
}

class _SogukIceceklerState extends State<SogukIcecekler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Soğuk İçecekler')),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.yellow,
                      child: Column(children: <Widget>[
                        Expanded(flex: 2, child: Center(child: Text("Su"))),
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
                                              su++;
                                            });

                                            // print("Çay + Tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(su.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (su > 0) {
                                                su--;
                                              }
                                            });
                                            // print("Çay - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.pink,
                      child: Column(children: <Widget>[
                        Expanded(flex: 2, child: Center(child: Text("Soda"))),
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
                                              soda++;
                                            });

                                            // print("Kahve + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(soda.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (soda > 0) {
                                                soda--;
                                              }
                                            });

                                            // print("Kahve - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.blueGrey,
                      child: Column(children: <Widget>[
                        Expanded(flex: 2, child: Center(child: Text("Pepsi"))),
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
                                              pepsi++;
                                            });

                                            // print("Pepsi + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(pepsi.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (pepsi > 0) {
                                                pepsi--;
                                              }
                                            });

                                            // print("Pepsi - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.purple,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2, child: Center(child: Text("Meyve Suyu"))),
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
                                              meyveSuyu++;
                                            });

                                            // print("Meyve Suyu + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(meyveSuyu.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (meyveSuyu > 0) {
                                                meyveSuyu--;
                                              }
                                            });

                                            // print("Meyve Suyu - tıklandı");
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
