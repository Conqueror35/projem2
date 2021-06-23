
import 'package:flutter/material.dart';

import 'package:flutter_app/main.dart';


int mercimekCorba = 0;
int domatesCorba = 0;
int mantarCorba = 0;
int tavukSuyuCorba = 0;


class Corbalar extends StatefulWidget {
  @override
  _CorbalarState createState() => _CorbalarState();
}

class _CorbalarState extends State<Corbalar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Çorbalar')),
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
                                child: Center(child: Text("Mercimek Çorbası"))),
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
                                                      mercimekCorba++;
                                                    });

                                                    //print("Mercimek + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(mercimekCorba.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (mercimekCorba > 0) {
                                                        mercimekCorba--;
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
                                child: Center(child: Text("Domates Çorbası"))),
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
                                                      domatesCorba++;
                                                    });

                                                    //print("Domates + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(domatesCorba.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (domatesCorba > 0) {
                                                        domatesCorba--;
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
                            Expanded(
                                flex: 2,
                                child: Center(child: Text("Mantar Çorbası"))),
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
                                                      mantarCorba++;
                                                    });

                                                    //print("Mantar + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(mantarCorba.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (mantarCorba > 0) {
                                                        mantarCorba--;
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
                                flex: 2,
                                child: Center(child: Text("Tavuk Suyu Çorbası"))),
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
                                                      tavukSuyuCorba++;
                                                    });

                                                    //print("Tavuk Suyu + tıklandı");
                                                  }))),
                                      Expanded(
                                          flex: 1,
                                          child: Center(
                                              child: Text(tavukSuyuCorba.toString(),
                                                  style: TextStyle(fontSize: 20)))),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                              child: ElevatedButton(
                                                  child: Text("-"),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (tavukSuyuCorba > 0) {
                                                        tavukSuyuCorba--;
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
