/* Kullanılan Widget'lar :

MaterialApp, Scaffold, AppBar, Text, SafeArea,
Column, Expanded, Container, Center, ElevatedButton
FloatingActionButton, Image, Row, TextFormField, BoxDecoration
TextStyle, Padding, TextButton, Icon, RiveAnimation, Future

Duration, SizedBox, SingleChildScrollView, SizeTransition, CurvedAnimation
AnimationController, BottomAppBar, FlDotData, FlSpot, LineChartBarData
SideTitles, FlTitlesData, LineTouchTooltipData, LineTouchData, LineChartData
LineChart,RaisedButton, ButtonTheme, TextEditingController, InputDecoration

OutlineInputBorder, MaterialPageRoute, EdgeInsets, GestureDetector, SettableMetadata
AnimatedTextKit, DefaultTextStyle, ScaleAnimatedText

MyApp,

Hosgeldiniz,
Kayit,
Giris,
Konum,
Yemekler, > Corbalar, SuluYemekler, Izgaralar, Salatalar, EvYemekleri, Yoresel, Tatlilar, SogukIcecekler, SicakIcecekler,
AdSoyad,
Foto,
FotoOnay,
Sonuc,
Grafik,
Tesekkur,
Bilgi

import 'dart:html';
import 'package:path/path.dart';
 */

import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'dart:ui';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:path_provider/path_provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:http/http.dart' show Response, get;
import 'dart:convert';
import 'package:rive/rive.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter_app/Corbalar.dart';
import 'package:flutter_app/SogukIcecekler.dart';
import 'package:flutter_app/SicakIcecekler.dart';
import 'package:flutter_app/Izgaralar.dart';
import 'package:flutter_app/SuluYemekler.dart';
import 'package:flutter_app/EvYemekleri.dart';
import 'package:flutter_app/Tatlilar.dart';
import 'package:flutter_app/Yoresel.dart';
import 'package:flutter_app/Salatalar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

int realMercimekCorba = 0;
int realDomatesCorba = 0;
int realMantarCorba = 0;
int realTavukSuyuCorba = 0;

int realKuruFasulye = 0;
int realTurlu = 0;
int realTavukSote = 0;
int realSebzeliKofte = 0;

int realKofteIzgara = 0;
int realAdanaIzgara = 0;
int realTavukIzgara = 0;
int realKuzuIzgara = 0;

int realCobanSalatasi = 0;
int realMevsimSalatasi = 0;
int realRokaSalatasi = 0;
int realSemizotuSalatasi = 0;

int realYaprakSarma = 0;
int realSigaraBoregi = 0;
int realManti = 0;
int realIcliKofte = 0;

int realNormalEtliekmek = 0;
int realSadeEtliekmek = 0;
int realPeynirliEtliekmek = 0;
int realBicakArasi = 0;

int realBaklava = 0;
int realKunefe = 0;
int realDondurma = 0;
int realKazandibi = 0;

int realSu = 0;
int realSoda = 0;
int realPepsi = 0;
int realMeyveSuyu = 0;

int realCay = 0;
int realTurkKahvesi = 0;
int realNescafe = 0;
int realSalep = 0;

//-------------------------

int ontomercimekCorba = 0;
int ontodomatesCorba = 0;
int ontomantarCorba = 0;
int ontotavukSuyuCorba = 0;

int ontokuruFasulye = 0;
int ontoturlu = 0;
int ontotavukSote = 0;
int ontosebzeliKofte = 0;

int ontokofteIzgara = 0;
int ontoadanaIzgara = 0;
int ontotavukIzgara = 0;
int ontokuzuIzgara = 0;

int ontocobanSalatasi = 0;
int ontomevsimSalatasi = 0;
int ontorokaSalatasi = 0;
int ontosemizotuSalatasi = 0;

int ontoyaprakSarma = 0;
int ontosigaraBoregi = 0;
int ontomanti = 0;
int ontoicliKofte = 0;

int ontonormalEtliekmek = 0;
int ontosadeEtliekmek = 0;
int ontopeynirliEtliekmek = 0;
int ontobicakArasi = 0;

int ontobaklava = 0;
int ontokunefe = 0;
int ontodondurma = 0;
int ontokazandibi = 0;

int ontosu = 0;
int ontosoda = 0;
int ontopepsi = 0;
int ontomeyveSuyu = 0;

int ontocay = 0;
int ontoturkKahvesi = 0;
int ontonescafe = 0;
int ontosalep = 0;

//-----------------------

var adSoyad = "";
var realAdSoyad = "";
var ontoadSoyad = "";

var masaNumara = "";
var realMasaNumara = "";
var ontomasaNumara = "";

var uyari1 = "";
var uyari2 = "";
var uyari3 = "";
var uyari4 = "";
var uyari5 = "";
var uyari6 = "";

File x;
File realX;
File ontox;

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hosgeldiniz(),
    );
  }
}

class Hosgeldiniz extends StatefulWidget {
  @override
  _HosgeldinizState createState() => _HosgeldinizState();
}

class _HosgeldinizState extends State<Hosgeldiniz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Hoşgeldiniz",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.lightGreenAccent),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedTextKit(
              pause: Duration(milliseconds: 1000),
              repeatForever: true,
              animatedTexts: [
                ColorizeAnimatedText(
                  "Hoşgeldiniz",
                  colors: [
                    Colors.redAccent,
                    Colors.purple,
                    Colors.deepPurple,
                    Colors.yellow,
                    Colors.cyanAccent,
                  ],
                  textStyle: TextStyle(fontSize: 50),
                ),
                FadeAnimatedText("Hoşgeldiniz",
                    textStyle: TextStyle(
                      fontSize: 50,
                    ))
              ],
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        child: Icon(
          Icons.arrow_forward,
          size: 45.0,
          color: Colors.red,
        ),
        onPressed: () {
          Route kayit = MaterialPageRoute(builder: (context) {
            return Kayit();
          });
          Navigator.push(context, kayit);
        },
      ),
    );
  }
}

class Kayit extends StatefulWidget {
  @override
  _KayitState createState() => _KayitState();
}

class _KayitState extends State<Kayit> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  var cekilenVeri1 = "";

  Future<void> kayitOl() async {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: t1.text, password: t2.text)
        .then((kullanici) {
      FirebaseFirestore.instance.collection("Kullanicilar").doc(t1.text).set({
        'KullaniciEposta': t1.text,
        'KullaniciSifre': t2.text,
      }).whenComplete(() {
        setState(() {
          uyari4 = "Kayıt gerçekleşti.";
        });
      });
    });

    Future.delayed(Duration(seconds: 2), () {
      veriGetir1();
    });
  }

  Future<void> veriGetir1() async {
    await FirebaseFirestore.instance
        .collection('Kullanicilar')
        .doc(t1.text)
        .get()
        .then((gelenVeri) {
      cekilenVeri1 = gelenVeri.data()['KullaniciEposta'];
    }).whenComplete(() {
      setState(() {
        if (cekilenVeri1 == t1.text && cekilenVeri1 != "") {
          uyari4 = "Kayıtlısınız.";
        } else {
          uyari4 = "Eksik ya da yanlış bilgi girdiniz.";
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar:
                AppBar(title: Text("Kayıt"), backgroundColor: Colors.orange),
            backgroundColor: Colors.yellow,
            body: SafeArea(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        controller: t1,
                        maxLength: 25,
                        maxLines: 1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'e-mail')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        controller: t2,
                        maxLength: 25,
                        maxLines: 1,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'password')),
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 50.0,
                    child: Center(
                      child: Text(uyari4.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ButtonTheme(
                      height: 100.0,
                      child: RaisedButton(
                          child: Text("Kayıt Ol"),
                          onPressed: () {
                            kayitOl();
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ButtonTheme(
                      buttonColor: Colors.deepOrangeAccent,
                      height: 150.0,
                      child: RaisedButton(
                          child: Text(
                            "Giriş Sayfasına Git",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Giris()));
                          }),
                    ),
                  ),
                ],
              ),
            ))));
  }
}

class Giris extends StatefulWidget {
  @override
  _GirisState createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  var cekilenVeri2 = "";
  var cekilenVeri3 = "";

  Future<void> girisYap() async {
    await veriGetir2();

    Future.delayed(Duration(seconds: 2), () {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: t1.text, password: t2.text)
          .then((kullanici) {
        setState(() {
          uyari5 = "Giriş yapılıyor.";
        });
        Future.delayed(Duration(seconds: 2), () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Konum()));
        });
      });
    });
  }

  Future<void> veriGetir2() async {
    await FirebaseFirestore.instance
        .collection('Kullanicilar')
        .doc(t1.text)
        .get()
        .then((gelenVeri) {
      cekilenVeri2 = gelenVeri.data()['KullaniciEposta'];
      cekilenVeri3 = gelenVeri.data()['KullaniciSifre'];
    }).whenComplete(() {
      setState(() {
        if (cekilenVeri2 == t1.text && cekilenVeri3 == t2.text) {
          uyari5 = "Kayıtlısınız.";
        } else if (cekilenVeri2 == t1.text && cekilenVeri3 != t2.text) {
          uyari5 = "Kayıtlısınız ama yanlış şifre girdiniz.";
        } else {
          uyari5 = "Eksik ya da yanlış bilgi girdiniz.";
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Giriş"), backgroundColor: Colors.deepOrangeAccent),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: t1,
                    maxLength: 25,
                    maxLines: 1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'e-mail')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: t2,
                    maxLength: 25,
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'password')),
              ),
              SizedBox(
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(uyari5.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ButtonTheme(
                  height: 100.0,
                  child: RaisedButton(
                      child: Text("Giriş Yap"),
                      onPressed: () {
                        girisYap();
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ButtonTheme(
                  buttonColor: Colors.orange,
                  height: 150.0,
                  child: RaisedButton(
                      child: Text(
                        "Kayıt Sayfasına Git",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Kayit()));
                      }),
                ),
              ),
            ],
          ),
        )));
  }
}

class Konum extends StatefulWidget {
  @override
  _KonumState createState() => _KonumState();
}

var enlem = "";
var boylam = "";

var isYeriEnlem = "37.4219784";
var isYeriBoylam = "-122.0840297";

class _KonumState extends State<Konum> {
  KonumBul() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      enlem = position.latitude.toString();
      boylam = position.longitude.toString();
    });
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        uyari6 = "Uygunluk denetleniyor.";
      });
      Uygunluk();
    });
  }

  Uygunluk() async {
    Future.delayed(Duration(seconds: 2), () {
      if ((double.parse(enlem) - double.parse(isYeriEnlem)).abs() < 0.003 &&
          (double.parse(boylam) - double.parse(isYeriBoylam)).abs() < 0.006) {
        setState(() {
          uyari6 = "Uygundur.";
        });

        Future.delayed(Duration(seconds: 2), () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Yemekler()));
        });
      } else {
        setState(() {
          uyari6 = "Uygun değildir.";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Konum"), backgroundColor: Colors.lightBlue),
        backgroundColor: Colors.tealAccent,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 70.0,
                child: Center(
                  child: Text("Enlem : " + enlem.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 70.0,
                child: Center(
                  child: Text("Boylam : " + boylam.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ButtonTheme(
                  buttonColor: Colors.redAccent,
                  height: 150.0,
                  child: RaisedButton(
                      color: Colors.amberAccent,
                      child: Text(
                        "Konumumu Denetle",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        KonumBul();
                      }),
                ),
              ),
              SizedBox(
                height: 100.0,
                child: Center(
                  child: Text(uyari6.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black)),
                ),
              ),
            ],
          ),
        )));
  }
}

class Yemekler extends StatefulWidget {
  @override
  _YemeklerState createState() => _YemeklerState();
}

class _YemeklerState extends State<Yemekler> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Ana Menü"), backgroundColor: Colors.green),
        backgroundColor: Colors.yellow,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 150.0,
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                          child: Image.asset('lib/images/corba.jpg'),
                          onDoubleTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Corbalar()));
                            setState(() {
                              uyari1 = "";
                            });
                          })),
                ),
                SizedBox(
                  height: 40.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("Çorbalar")),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                          child: Image.asset('lib/images/kurufasulye.jpg'),
                          onDoubleTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SuluYemekler()));
                            setState(() {
                              uyari1 = "";
                            });
                          })),
                ),
                SizedBox(
                  height: 40.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("Sulu Yemekler")),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                          child: Image.asset('lib/images/izgara.jpg'),
                          onLongPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Izgaralar()));
                            setState(() {
                              uyari1 = "";
                            });
                          })),
                ),
                SizedBox(
                  height: 40.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("Izgaralar")),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                          child: Image.asset('lib/images/salata.jpg'),
                          onLongPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Salatalar()));
                            setState(() {
                              uyari1 = "";
                            });
                          })),
                ),
                SizedBox(
                  height: 40.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("Salatalar")),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                          child: Image.asset('lib/images/evyemekleri.jpg'),
                          onLongPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EvYemekleri()));
                            setState(() {
                              uyari1 = "";
                            });
                          })),
                ),
                SizedBox(
                  height: 40.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("Ev Yemekleri")),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                          child: Image.asset('lib/images/etliekmek.jpg'),
                          onLongPressUp: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Yoresel()));
                            setState(() {
                              uyari1 = "";
                            });
                          })),
                ),
                SizedBox(
                  height: 40.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("Yöresel Yemekler")),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                          child: Image.asset('lib/images/tatli.jpg'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Tatlilar()));
                            setState(() {
                              uyari1 = "";
                            });
                          })),
                ),
                SizedBox(
                  height: 40.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("Tatlılar")),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                          child: Image.asset('lib/images/meyvesuyu.jpg'),
                          onTapCancel: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SogukIcecekler()));
                            setState(() {
                              uyari1 = "";
                            });
                          })),
                ),
                SizedBox(
                  height: 40.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("Soğuk İçecekler")),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                          child: Image.asset('lib/images/cay.jpg'),
                          onTapCancel: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SicakIcecekler()));
                            setState(() {
                              uyari1 = "";
                            });
                          })),
                ),
                SizedBox(
                  height: 40.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text("Sıcak İçecekler")),
                  ),
                ),
                SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: Center(
                      child: Text(uyari1.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black))),
                ),
                SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: FloatingActionButton(
                      child: Center(
                          child: Text("ONAYLA",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  backgroundColor: Colors.white))),
                      onPressed: () {
                        if (mercimekCorba > 0 ||
                            domatesCorba > 0 ||
                            mantarCorba > 0 ||
                            tavukSuyuCorba > 0 ||
                            kuruFasulye > 0 ||
                            turlu > 0 ||
                            tavukSote > 0 ||
                            sebzeliKofte > 0 ||
                            kofteIzgara > 0 ||
                            adanaIzgara > 0 ||
                            tavukIzgara > 0 ||
                            kuzuIzgara > 0 ||
                            cobanSalatasi > 0 ||
                            mevsimSalatasi > 0 ||
                            rokaSalatasi > 0 ||
                            semizotuSalatasi > 0 ||
                            yaprakSarma > 0 ||
                            sigaraBoregi > 0 ||
                            manti > 0 ||
                            icliKofte > 0 ||
                            normalEtliekmek > 0 ||
                            sadeEtliekmek > 0 ||
                            peynirliEtliekmek > 0 ||
                            bicakArasi > 0 ||
                            baklava > 0 ||
                            kunefe > 0 ||
                            dondurma > 0 ||
                            kazandibi > 0 ||
                            su > 0 ||
                            soda > 0 ||
                            pepsi > 0 ||
                            meyveSuyu > 0 ||
                            cay > 0 ||
                            turkKahvesi > 0 ||
                            nescafe > 0 ||
                            salep > 0) {
                          realMercimekCorba = mercimekCorba;
                          realDomatesCorba = domatesCorba;
                          realMantarCorba = mantarCorba;
                          realTavukSuyuCorba = tavukSuyuCorba;

                          realKuruFasulye = kuruFasulye;
                          realTurlu = turlu;
                          realTavukSote = tavukSote;
                          realSebzeliKofte = sebzeliKofte;

                          realKofteIzgara = kofteIzgara;
                          realAdanaIzgara = adanaIzgara;
                          realTavukIzgara = tavukIzgara;
                          realKuzuIzgara = kuzuIzgara;

                          realCobanSalatasi = cobanSalatasi;
                          realMevsimSalatasi = mevsimSalatasi;
                          realRokaSalatasi = rokaSalatasi;
                          realSemizotuSalatasi = semizotuSalatasi;

                          realYaprakSarma = yaprakSarma;
                          realSigaraBoregi = sigaraBoregi;
                          realManti = manti;
                          realIcliKofte = icliKofte;

                          realNormalEtliekmek = normalEtliekmek;
                          realSadeEtliekmek = sadeEtliekmek;
                          realPeynirliEtliekmek = peynirliEtliekmek;
                          realBicakArasi = bicakArasi;

                          realBaklava = baklava;
                          realKunefe = kunefe;
                          realDondurma = dondurma;
                          realKazandibi = kazandibi;

                          realSu = su;
                          realSoda = soda;
                          realPepsi = pepsi;
                          realMeyveSuyu = meyveSuyu;

                          realCay = cay;
                          realTurkKahvesi = turkKahvesi;
                          realNescafe = nescafe;
                          realSalep = salep;

                          Route adsoyad = MaterialPageRoute(builder: (context) {
                            return AdSoyad();
                          });

                          Navigator.push(context, adsoyad);

                          //print("Tümünü ONAYLA basıldı");
                        } else {
                          setState(() {
                            uyari1 = "Bir şeyler seçmelisiniz.";
                          });
                        }
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AdSoyad extends StatefulWidget {
  @override
  _AdSoyadState createState() => _AdSoyadState();
}

class _AdSoyadState extends State<AdSoyad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Ad, Soyad, Masa Numarası'),
          backgroundColor: Colors.pink,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Container(
                      child: (Text(
                          "Adınızı, soyadınızı ve siparişinizin gelmesini istediğiniz masa numarasını giriniz.",
                          style: (TextStyle(fontSize: 20)))),
                    ),
                  ),
                ),
                TextField(
                    onChanged: (string1) {
                      adSoyad = string1;
                    },
                    maxLength: 25,
                    maxLines: 1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'name, surname')),
                TextField(
                    onChanged: (string2) {
                      masaNumara = string2;
                    },
                    maxLength: 3,
                    maxLines: 1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'table number')),
                SizedBox(
                  width: 30,
                  height: 30,
                ),
                Center(
                    child: (Text(uyari2.toString(),
                        style: TextStyle(fontSize: 20)))),
                SizedBox(
                  width: 50,
                  height: 50,
                ),
                SizedBox(
                  width: 150.0,
                  height: 150.0,
                  child: FloatingActionButton(
                      child: Container(
                          color: Colors.deepOrange, child: Text("ONAYLA")),
                      onPressed: () {
                        if (adSoyad.length > 0 && masaNumara.length > 0) {
                          realAdSoyad = adSoyad;
                          realMasaNumara = masaNumara;

                          Route foto = MaterialPageRoute(builder: (context) {
                            return Foto();
                          });
                          Navigator.push(context, foto);

                          setState(() {
                            uyari2 = "";
                          });
                        } else {
                          setState(() {
                            uyari2 = "Gerekli yerleri doldurunuz.";
                          });
                        }
                      }),
                ),
              ]),
        )));
  }
}

class Foto extends StatefulWidget {
  @override
  _FotoState createState() => _FotoState();
}

class _FotoState extends State<Foto> {
  Future kameradanYukle() async {
    var alinanDosya = await ImagePicker().getImage(source: ImageSource.camera);

    x = File(alinanDosya.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('Fotoğraf'), backgroundColor: Colors.pink),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Text(
                      "Lütfen masanızdaki peçeteliğin fotoğrafını çekiniz. Masa numaranız anlaşılabilir olmalıdır.",
                      style: TextStyle(fontSize: 20))),
              Expanded(
                  flex: 1,
                  child: Center(
                      child: Text(uyari3.toString(),
                          style: TextStyle(fontSize: 20)))),
              Expanded(
                  flex: 4,
                  child: ElevatedButton(
                      child: Container(
                          color: Colors.deepOrange,
                          child: Text("FOTOĞRAF ÇEK")),
                      onPressed: () {
                        setState(() {
                          uyari3 = "";
                        });

                        kameradanYukle();
                      })),
              Expanded(
                  flex: 4,
                  child: FloatingActionButton(
                      child: Container(
                          color: Colors.deepOrange, child: Text("ONAY")),
                      onPressed: () {
                        if (x != null) {
                          Route fotoOnay =
                              MaterialPageRoute(builder: (context) {
                            return FotoOnay();
                          });
                          Navigator.push(context, fotoOnay);
                        } else {
                          setState(() {
                            uyari3 = "Fotoğraf çekiniz.";
                          });
                        }
                      })),
            ])));
  }
}

class FotoOnay extends StatefulWidget {
  @override
  _FotoOnayState createState() => _FotoOnayState();
}

class _FotoOnayState extends State<FotoOnay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
            backgroundColor: Colors.black, title: Text('Fotoğraf Onayı')),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              if (x != null)
                Expanded(
                  flex: 3,
                  child: Image.file(x),
                ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                        child: Container(
                            color: Colors.deepOrange, child: Text("ONAY")),
                        onPressed: () {
                          if (x != null) {
                            realX = x;

                            Route sonuc = MaterialPageRoute(builder: (context) {
                              return Sonuc();
                            });
                            Navigator.push(context, sonuc);
                          }
                        }),
                  )),
            ])));
  }
}

class Sonuc extends StatefulWidget {
  @override
  _SonucState createState() => _SonucState();
}

class _SonucState extends State<Sonuc> {
  Yukle() async {
    Reference referansYol = FirebaseStorage.instance
        .ref()
        .child("Siparisler")
        .child(FirebaseAuth.instance.currentUser.email)
        .child("Detaylar");

    referansYol.putFile(
      ontox,
      SettableMetadata(
        customMetadata: {
          "Masa Numarası": ontomasaNumara.toString(),
          "Ad, Soyad": ontoadSoyad.toString(),
          if (ontomercimekCorba > 0)
            "Mercimek Çorbası": ontomercimekCorba.toString(),
          if (ontodomatesCorba > 0)
            "Domates Çorbası": ontodomatesCorba.toString(),
          if (ontomantarCorba > 0) "Mantar Çorbası": ontomantarCorba.toString(),
          if (ontotavukSuyuCorba > 0)
            "Tavuk Suyu Çorbası": ontotavukSuyuCorba.toString(),
          if (ontokuruFasulye > 0) "Kuru Fasulye": ontokuruFasulye.toString(),
          if (ontoturlu > 0) "Türlü": ontoturlu.toString(),
          if (ontotavukSote > 0) "Tavuk Sote": ontotavukSote.toString(),
          if (ontosebzeliKofte > 0)
            "Sebzeli Köfte": ontosebzeliKofte.toString(),
          if (ontokofteIzgara > 0) "Köfte Izgara": ontokofteIzgara.toString(),
          if (ontoadanaIzgara > 0) "Adana Izgara": ontoadanaIzgara.toString(),
          if (ontotavukIzgara > 0) "Tavuk Izgara": ontotavukIzgara.toString(),
          if (ontokuzuIzgara > 0) "Kuzu Izgara": ontokuzuIzgara.toString(),
          if (ontocobanSalatasi > 0)
            "Çoban Salatası": ontocobanSalatasi.toString(),
          if (ontomevsimSalatasi > 0)
            "Mevsim Salatası": ontomevsimSalatasi.toString(),
          if (ontorokaSalatasi > 0)
            "Roka Salatası": ontorokaSalatasi.toString(),
          if (ontosemizotuSalatasi > 0)
            "Semizotu Salatası": ontosemizotuSalatasi.toString(),
          if (ontoyaprakSarma > 0) "Yaprak Sarma": ontoyaprakSarma.toString(),
          if (ontosigaraBoregi > 0)
            "Sigara Böreği": ontosigaraBoregi.toString(),
          if (ontomanti > 0) "Mantı": ontomanti.toString(),
          if (ontoicliKofte > 0) "İçli Köfte": ontoicliKofte.toString(),
          if (ontonormalEtliekmek > 0)
            "Normal Etliekmek": ontonormalEtliekmek.toString(),
          if (ontosadeEtliekmek > 0)
            "Sade Etliekmek": ontosadeEtliekmek.toString(),
          if (ontopeynirliEtliekmek > 0)
            "Peynirli Etliekmek": ontopeynirliEtliekmek.toString(),
          if (ontobicakArasi > 0) "Bıçak Arası": ontobicakArasi.toString(),
          if (ontobaklava > 0) "Baklava": ontobaklava.toString(),
          if (ontokunefe > 0) "Künefe": ontokunefe.toString(),
          if (ontodondurma > 0) "Dondurma": ontodondurma.toString(),
          if (ontokazandibi > 0) "Kazandibi": ontokazandibi.toString(),
          if (ontosu > 0) "Su": ontosu.toString(),
          if (ontosoda > 0) "Soda": ontosoda.toString(),
          if (ontopepsi > 0) "Pepsi": ontopepsi.toString(),
          if (ontomeyveSuyu > 0) "Meyve Suyu": ontomeyveSuyu.toString(),
          if (ontocay > 0) "Çay": ontocay.toString(),
          if (ontoturkKahvesi > 0) "Türk Kahvesi": ontoturkKahvesi.toString(),
          if (ontonescafe > 0) "Nescafe": ontonescafe.toString(),
          if (ontosalep > 0) "Salep": ontosalep.toString(),
        },
      ),
    );
    //referansYol.putString(ontomercimekCorba.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Sonuç'),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                  Widget>[
            if (realMercimekCorba > 0)
              Text("* Mercimek Çorbası : " + realMercimekCorba.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realDomatesCorba > 0)
              Text("* Domates Çorbası : " + realDomatesCorba.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realMantarCorba > 0)
              Text("* Mantar Çorbası : " + realMantarCorba.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realTavukSuyuCorba > 0)
              Text("* Tavuk Suyu Çorbası : " + realTavukSuyuCorba.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realKuruFasulye > 0)
              Text("* Kuru Fasulye : " + realKuruFasulye.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realTurlu > 0)
              Text("* Türlü : " + realTurlu.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realTavukSote > 0)
              Text("* Tavuk Sote : " + realTavukSote.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realSebzeliKofte > 0)
              Text("* Sebzeli Köfte : " + realSebzeliKofte.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realKofteIzgara > 0)
              Text("* Köfte Izgara : " + realKofteIzgara.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realAdanaIzgara > 0)
              Text("* Adana Izgara : " + realAdanaIzgara.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realTavukIzgara > 0)
              Text("* Tavuk Izgara : " + realTavukIzgara.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realKuzuIzgara > 0)
              Text("* Kuzu Izgara : " + realKuzuIzgara.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realCobanSalatasi > 0)
              Text("* Çoban Salatası : " + realCobanSalatasi.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realMevsimSalatasi > 0)
              Text("* Mevsim Salatası : " + realMevsimSalatasi.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realRokaSalatasi > 0)
              Text("* Roka Salatası : " + realRokaSalatasi.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realSemizotuSalatasi > 0)
              Text("* Semizotu Salatası : " + realSemizotuSalatasi.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realYaprakSarma > 0)
              Text("* Yaprak Sarma : " + realYaprakSarma.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realSigaraBoregi > 0)
              Text("* Sigara Böreği : " + realSigaraBoregi.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realManti > 0)
              Text("* Mantı : " + realManti.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realIcliKofte > 0)
              Text("* İçli Köfte : " + realIcliKofte.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realNormalEtliekmek > 0)
              Text("* Normal Etliekmek : " + realNormalEtliekmek.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realSadeEtliekmek > 0)
              Text("* Sade Etliekmek : " + realSadeEtliekmek.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realPeynirliEtliekmek > 0)
              Text("* Peynirli Etliekmek : " + realPeynirliEtliekmek.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realBicakArasi > 0)
              Text("* Bıçak Arası : " + realBicakArasi.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realBaklava > 0)
              Text("* Baklava : " + realBaklava.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realKunefe > 0)
              Text("* Künefe : " + realKunefe.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realDondurma > 0)
              Text("* Dondurma : " + realDondurma.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realKazandibi > 0)
              Text("* Kazandibi : " + realKazandibi.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realSu > 0)
              Text("* Su : " + realSu.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realSoda > 0)
              Text("* Soda : " + realSoda.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realPepsi > 0)
              Text("* Pepsi : " + realPepsi.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realMeyveSuyu > 0)
              Text("* Meyve Suyu : " + realMeyveSuyu.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realCay > 0)
              Text("* Çay : " + realCay.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realTurkKahvesi > 0)
              Text("* Türk Kahvesi : " + realTurkKahvesi.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realNescafe > 0)
              Text("* Nescafe : " + realNescafe.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realSalep > 0)
              Text("* Salep : " + realSalep.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realAdSoyad.length > 0)
              Text("* Adınız ve Soyadınız : " + realAdSoyad.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            if (realMasaNumara.length > 0)
              Text("* Masa numaranız : " + realMasaNumara.toString(),
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                buttonColor: Colors.deepPurple,
                height: 200.0,
                child: RaisedButton(
                    child: Container(
                        color: Colors.deepOrange,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "ONAY",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )),
                    onPressed: () {
                      ontomercimekCorba = realMercimekCorba;
                      ontodomatesCorba = realDomatesCorba;
                      ontomantarCorba = realMantarCorba;
                      ontotavukSuyuCorba = realTavukSuyuCorba;

                      ontokuruFasulye = realKuruFasulye;
                      ontoturlu = realTurlu;
                      ontotavukSote = realTavukSote;
                      ontosebzeliKofte = realSebzeliKofte;

                      ontokofteIzgara = realKofteIzgara;
                      ontoadanaIzgara = realAdanaIzgara;
                      ontotavukIzgara = realTavukIzgara;
                      ontokuzuIzgara = realKuzuIzgara;

                      ontocobanSalatasi = realCobanSalatasi;
                      ontomevsimSalatasi = realMevsimSalatasi;
                      ontorokaSalatasi = realRokaSalatasi;
                      ontosemizotuSalatasi = realSemizotuSalatasi;

                      ontoyaprakSarma = realYaprakSarma;
                      ontosigaraBoregi = realSigaraBoregi;
                      ontomanti = realManti;
                      ontoicliKofte = realIcliKofte;

                      ontonormalEtliekmek = realNormalEtliekmek;
                      ontosadeEtliekmek = realSadeEtliekmek;
                      ontopeynirliEtliekmek = realPeynirliEtliekmek;
                      ontobicakArasi = realBicakArasi;

                      ontobaklava = realBaklava;
                      ontokunefe = realKunefe;
                      ontodondurma = realDondurma;
                      ontokazandibi = realKazandibi;

                      ontosu = realSu;
                      ontosoda = realSoda;
                      ontopepsi = realPepsi;
                      ontomeyveSuyu = realMeyveSuyu;

                      ontocay = realCay;
                      ontoturkKahvesi = realTurkKahvesi;
                      ontonescafe = realNescafe;
                      ontosalep = realSalep;

                      ontomasaNumara = realMasaNumara;
                      ontoadSoyad = realAdSoyad;
                      ontox = realX;

                      Yukle();

                      Route grafik = MaterialPageRoute(builder: (context) {
                        return Grafik();
                      });
                      Navigator.push(context, grafik);
                    }),
              ),
            ),
          ]),
        )));
  }
}

class Grafik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Grafiksel Gösterim",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 500.0,
              child: LineChart(
                LineChartData(
                  lineTouchData: LineTouchData(
                    touchTooltipData: LineTouchTooltipData(
                      tooltipBgColor: Colors.blue,
                    ),
                    handleBuiltInTouches: true,
                  ),
                  backgroundColor: Colors.white70,
                  minX: 0,
                  maxX: 10,
                  minY: 0,
                  maxY: 15,

                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: SideTitles(
                        rotateAngle: 75.0,
                        interval: 1.0,
                        margin: 20,
                        reservedSize: 80.0,
                        showTitles: true,
                        getTitles: (value) {
                          switch (value.toInt()) {
                            case 1:
                              return 'Çorbalar';
                            case 2:
                              return 'Sulu Yemekler';
                            case 3:
                              return 'Izgaralar';
                            case 4:
                              return 'Salatalar';
                            case 5:
                              return 'Ev Yemekleri';
                            case 6:
                              return 'Yöresel Yemekler';
                            case 7:
                              return 'Tatlılar';
                            case 8:
                              return 'Soğuk İçecekler';
                            case 9:
                              return 'Sıcak İçecekler';
                          }
                        }),
                  ),
                  //titlesData: FlTitlesData(bottomTitles: SideTitles(margin: 20, reservedSize: 20)),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(
                            1,
                            (ontomercimekCorba +
                                    ontodomatesCorba +
                                    ontomantarCorba +
                                    ontotavukSuyuCorba)
                                .toDouble()),
                        FlSpot(
                            2,
                            (ontokuruFasulye +
                                    ontoturlu +
                                    ontotavukSote +
                                    ontosebzeliKofte)
                                .toDouble()),
                        FlSpot(
                            3,
                            (ontokofteIzgara +
                                    ontoadanaIzgara +
                                    ontotavukIzgara +
                                    ontokuzuIzgara)
                                .toDouble()),
                        FlSpot(
                            4,
                            (ontocobanSalatasi +
                                    ontomevsimSalatasi +
                                    ontorokaSalatasi +
                                    ontosemizotuSalatasi)
                                .toDouble()),
                        FlSpot(
                            5,
                            (ontoyaprakSarma +
                                    ontosigaraBoregi +
                                    ontomanti +
                                    ontoicliKofte)
                                .toDouble()),
                        FlSpot(
                            6,
                            (ontonormalEtliekmek +
                                    ontosadeEtliekmek +
                                    ontopeynirliEtliekmek +
                                    ontobicakArasi)
                                .toDouble()),
                        FlSpot(
                            7,
                            (ontobaklava +
                                    ontokunefe +
                                    ontodondurma +
                                    ontokazandibi)
                                .toDouble()),
                        FlSpot(
                            8,
                            (ontosu + ontosoda + ontopepsi + ontomeyveSuyu)
                                .toDouble()),
                        FlSpot(
                            9,
                            (ontocay +
                                    ontoturkKahvesi +
                                    ontonescafe +
                                    ontosalep)
                                .toDouble()),
                      ],
                      barWidth: 1.5,
                      colors: <Color>[Colors.black],
                      dotData: FlDotData(
                        show: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.amber,
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        child: Icon(
          Icons.arrow_forward,
          size: 45.0,
          color: Colors.yellow,
        ),
        onPressed: () {
          Route tesekkur = MaterialPageRoute(builder: (context) {
            return Tesekkur();
          });
          Navigator.push(context, tesekkur);
        },
      ),
    );
  }
}

class Animasyon extends StatefulWidget {
  @override
  _AnimasyonState createState() => _AnimasyonState();
}

class _AnimasyonState extends State<Animasyon>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(milliseconds: 800), vsync: this)
          ..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );
  }

  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: _animation,
      axis: Axis.horizontal,
      child: Center(
        child: Container(
            width: 300.0,
            height: 200.0,
            color: Colors.blue.withOpacity(0.8),
            child: Center(
              child: DefaultTextStyle(
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  pause: Duration(milliseconds: 1000),
                  repeatForever: true,
                  animatedTexts: [
                    ScaleAnimatedText(
                      "Teşekkürler",
                    ),
                    ScaleAnimatedText(
                      "İyi Günler",
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

class Tesekkur extends StatefulWidget {
  @override
  _TesekkurState createState() => _TesekkurState();
}

class _TesekkurState extends State<Tesekkur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Teşekkürler"), backgroundColor: Colors.green),
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: RiveAnimation.asset('lib/images/tesekkur.riv'),
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextButton(
                  child: Animasyon(),
                  onPressed: () {
                    Route bilgi = MaterialPageRoute(builder: (context) {
                      return Bilgi();
                    });
                    Navigator.push(context, bilgi);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class Bilgi extends StatefulWidget {
  @override
  _BilgiState createState() => _BilgiState();
}

class _BilgiState extends State<Bilgi> {
  String gelenCevap1;
  String gelenCevap2;

  Future<void> postuGetir() async {
    String adres =
        "https://run.mocky.io/v3/a1ed9ea0-fb55-4f96-aee2-26b01a7b1690";
    Response cevap = await get(Uri.parse(adres));

    if (cevap.statusCode == 200) {
      gelenCevap1 = cevap.body;
      Map gelenJson = jsonDecode(cevap.body);

      setState(() {
        gelenCevap2 = gelenJson['body'];
      });
    } else {
      setState(() {
        gelenCevap1 = "Sorun oluştu.";
        gelenCevap2 = "Sorun oluştu.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("API ve Hakkında"), backgroundColor: Colors.green),
        body: Column(
          children: [
            Text("Hakkında"),
            Text(
              gelenCevap1.toString(),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Text(
              gelenCevap2.toString(),
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            postuGetir();
          },
          child: Icon(Icons.arrow_upward),
        ),
      ),
    );
  }
}
