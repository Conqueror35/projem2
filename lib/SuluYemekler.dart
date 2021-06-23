import 'package:flutter/material.dart';

import 'package:flutter_app/main.dart';

int kuruFasulye = 0;
int turlu = 0;
int tavukSote = 0;
int sebzeliKofte = 0;

class SuluYemekler extends StatefulWidget {
  @override
  _SuluYemeklerState createState() => _SuluYemeklerState();
}

class _SuluYemeklerState extends State<SuluYemekler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Sulu Yemekler')),
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
                            child: Center(child: Text("Kuru Fasulye"))),
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
                                              kuruFasulye++;
                                            });

                                            // print("Çay + Tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(kuruFasulye.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (kuruFasulye > 0) {
                                                kuruFasulye--;
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
                        Expanded(flex: 2, child: Center(child: Text("Türlü"))),
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
                                              turlu++;
                                            });

                                            // print("Kahve + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(turlu.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (turlu > 0) {
                                                turlu--;
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
                        Expanded(
                            flex: 2, child: Center(child: Text("Tavuk Sote"))),
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
                                              tavukSote++;
                                            });

                                            // print("Pepsi + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(tavukSote.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (tavukSote > 0) {
                                                tavukSote--;
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
                            flex: 2,
                            child: Center(child: Text("Sebzeli Köfte"))),
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
                                              sebzeliKofte++;
                                            });

                                            // print("Meyve Suyu + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(sebzeliKofte.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (sebzeliKofte > 0) {
                                                sebzeliKofte--;
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
