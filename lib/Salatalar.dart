import 'package:flutter/material.dart';

import 'package:flutter_app/main.dart';

int cobanSalatasi = 0;
int mevsimSalatasi = 0;
int rokaSalatasi = 0;
int semizotuSalatasi = 0;

class Salatalar extends StatefulWidget {
  @override
  _SalatalarState createState() => _SalatalarState();
}

class _SalatalarState extends State<Salatalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Salatalar')),
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
                            child: Center(child: Text("Çoban Salatası"))),
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
                                              cobanSalatasi++;
                                            });

                                            // print("Çay + Tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(cobanSalatasi.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (cobanSalatasi > 0) {
                                                cobanSalatasi--;
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
                            child: Center(child: Text("Mevsim Salatası"))),
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
                                              mevsimSalatasi++;
                                            });

                                            // print("Kahve + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(mevsimSalatasi.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (mevsimSalatasi > 0) {
                                                mevsimSalatasi--;
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
                            flex: 2,
                            child: Center(child: Text("Roka Salatası"))),
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
                                              rokaSalatasi++;
                                            });

                                            // print("Pepsi + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(rokaSalatasi.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (rokaSalatasi > 0) {
                                                rokaSalatasi--;
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
                            child: Center(child: Text("Semizotu Salatası"))),
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
                                              semizotuSalatasi++;
                                            });

                                            // print("Meyve Suyu + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(semizotuSalatasi.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (semizotuSalatasi > 0) {
                                                semizotuSalatasi--;
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
