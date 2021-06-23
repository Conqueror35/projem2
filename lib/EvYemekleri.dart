import 'package:flutter/material.dart';

import 'package:flutter_app/main.dart';

int yaprakSarma = 0;
int sigaraBoregi = 0;
int manti = 0;
int icliKofte = 0;

class EvYemekleri extends StatefulWidget {
  @override
  _EvYemekleriState createState() => _EvYemekleriState();
}

class _EvYemekleriState extends State<EvYemekleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Ev Yemekleri')),
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
                            child: Center(child: Text("Yaprak Sarma"))),
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
                                              yaprakSarma++;
                                            });

                                            //print("Mercimek + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(yaprakSarma.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (yaprakSarma > 0) {
                                                yaprakSarma--;
                                              }
                                            });
                                            //print("Mercimek - tıklandı");
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
                            child: Center(child: Text("Sigara Böreği"))),
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
                                              sigaraBoregi++;
                                            });

                                            //print("Domates + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(sigaraBoregi.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (sigaraBoregi > 0) {
                                                sigaraBoregi--;
                                              }
                                            });

                                            //print("Domates - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.blueGrey,
                      child: Column(children: <Widget>[
                        Expanded(flex: 2, child: Center(child: Text("Mantı"))),
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
                                              manti++;
                                            });

                                            //print("Mantar + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(manti.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (manti > 0) {
                                                manti--;
                                              }
                                            });

                                            //print("Mantar - tıklandı");
                                          }))),
                            ])))
                      ]))),
              Expanded(
                  flex: 3,
                  child: Container(
                      color: Colors.purple,
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 2, child: Center(child: Text("İçli Köfte"))),
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
                                              icliKofte++;
                                            });

                                            //print("Tavuk Suyu + tıklandı");
                                          }))),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(icliKofte.toString(),
                                          style: TextStyle(fontSize: 20)))),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: ElevatedButton(
                                          child: Text("-"),
                                          onPressed: () {
                                            setState(() {
                                              if (icliKofte > 0) {
                                                icliKofte--;
                                              }
                                            });

                                            //print("Tavuk Suyu - tıklandı");
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
