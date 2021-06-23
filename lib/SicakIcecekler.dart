import 'package:flutter/material.dart';

import 'package:flutter_app/main.dart';

int cay = 0;
int turkKahvesi = 0;
int nescafe = 0;
int salep = 0;

class SicakIcecekler extends StatefulWidget {
  @override
  _SicakIceceklerState createState() => _SicakIceceklerState();
}

class _SicakIceceklerState extends State<SicakIcecekler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Sıcak İçecekler')),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.yellow,
                      child: Column(children: <Widget>[
                        Expanded(flex: 2, child: Center(child: Text("Çay"))),
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
                                              cay++;
                                            });

                                            // print("Çay + Tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(cay.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (cay > 0) {
                                                cay--;
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
                        Expanded(
                            flex: 2,
                            child: Center(child: Text("Türk Kahvesi"))),
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
                                              turkKahvesi++;
                                            });

                                            // print("Kahve + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(turkKahvesi.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (turkKahvesi > 0) {
                                                turkKahvesi--;
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
                            flex: 2, child: Center(child: Text("Nescafe"))),
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
                                              nescafe++;
                                            });

                                            // print("Pepsi + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(nescafe.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (nescafe > 0) {
                                                nescafe--;
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
                        Expanded(flex: 2, child: Center(child: Text("Salep"))),
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
                                              salep++;
                                            });

                                            // print("Meyve Suyu + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(salep.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (salep > 0) {
                                                salep--;
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
