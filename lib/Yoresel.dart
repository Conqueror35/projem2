
import 'package:flutter/material.dart';

import 'package:flutter_app/main.dart';

int normalEtliekmek = 0;
int sadeEtliekmek = 0;
int peynirliEtliekmek = 0;
int bicakArasi = 0;


class Yoresel extends StatefulWidget {
  @override
  _YoreselState createState() => _YoreselState();
}

class _YoreselState extends State<Yoresel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Yöresel Yemekler')),
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
                                child: Center(child: Text("Normal Etliekmek"))),
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
                                                      normalEtliekmek++;
                                                    });

                                                    // print("normalEtliekmek + Tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(normalEtliekmek.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (normalEtliekmek > 0) {
                                                        normalEtliekmek--;
                                                      }
                                                    });
                                                    // print("normalEtliekmek - tıklandı");
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
                                child: Center(child: Text("Sade Etliekmek"))),
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
                                                      sadeEtliekmek++;
                                                    });

                                                    // print("sadeEtliekmek + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(sadeEtliekmek.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (sadeEtliekmek > 0) {
                                                        sadeEtliekmek--;
                                                      }
                                                    });

                                                    // print("sadeEtliekmek - tıklandı");
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
                                child: Center(child: Text("Peynirli Etliekmek"))),
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
                                                      peynirliEtliekmek++;
                                                    });

                                                    // print("PeynirliEtliekmek + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(peynirliEtliekmek.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (peynirliEtliekmek > 0) {
                                                        peynirliEtliekmek--;
                                                      }
                                                    });

                                                    // print("Peynirli Etliekmek - tıklandı");
                                                  }))),
                                    ])))
                          ]))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Colors.purple,
                          child: Column(children: <Widget>[
                            Expanded(
                                flex: 2, child: Center(child: Text("Bıçak Arası"))),
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
                                                      bicakArasi++;
                                                    });

                                                    // print("Bıçak Arası + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(bicakArasi.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (bicakArasi > 0) {
                                                        bicakArasi--;
                                                      }
                                                    });

                                                    // print("Bıçak Arası - tıklandı");
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