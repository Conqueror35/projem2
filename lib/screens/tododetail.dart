import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/model/todo.dart';
import 'package:flutter_app/utils/dbhelper.dart';
import 'package:intl/intl.dart';

/*
final List<String> choices = const <String>[menuSave, menuDelete, menuBack];

const menuSave = "Save Todo & Back";
const menuDelete = "Delete Todo";
const menuBack = "Back To List";
*/
DbHelper helper = DbHelper();

class TodoDetail extends StatefulWidget {
  Todo todo;

  TodoDetail(this.todo);

  @override
  State<StatefulWidget> createState() {
    return TodoDetailState(todo);
    //return TodoDetailState();
  }
}

class TodoDetailState extends State {
  Todo todo;

  TodoDetailState(this.todo);

  //final _priorities = ["High", "Medium", "Low"];
  //String _priority = "Low";
  final _formDistance = 5.0;
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  //TodoDetailState get title => TodoDetailState(todo);

  @override
  Widget build(BuildContext context) {
    titleController.text = todo.title;
    descController.text = todo.description;
    //realAdSoyad = todo.title;
    var textStyle = Theme.of(context).textTheme.caption;
    //var title = todo.title == "" ? "New Todo" : todo.title;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Ad, Soyad, Masa Numarası"),

          /*
          actions: [
            PopupMenuButton<String>(
              onSelected: select,
              itemBuilder: (BuildContext context) {
                return choices.map((e) {
                  return PopupMenuItem<String>(
                    value: e,
                    child: Text(e),
                  );
                }).toList();
              },
            )
          ],
          */
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: _formDistance, bottom: _formDistance),
                  child: TextField(
                      controller: titleController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Ad, Soyad",
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)))),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _formDistance, bottom: _formDistance),
                  child: TextField(
                      controller: descController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Masa Numarası",
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)))),
                ),
                ButtonTheme(
                  height: 100.0,
                  child: RaisedButton(
                      child: Text("Kaydet/Güncelle"),
                      onPressed: () {
                        save();
                      }),
                ),
                ButtonTheme(
                    height: 100.0,
                    child: RaisedButton(
                        child: Text("Sil"),
                        onPressed: () {
                          delete();
                        })),
                /*
                DropdownButton<String>(
                  value: this._priorities[this.todo.priority - 1],
                  items: _priorities.map((String str) {
                    return DropdownMenuItem<String>(
                      value: str,
                      child: Text(str),
                    );
                  }).toList(),
                  onChanged: (String str) {
                    updatePriority(str);
                  },
                ),*/
              ],
            ),
          ),
        ));
  }

/*
  void updatePriority(String value) {
    int priority = 0;
    switch (value) {
      case "High":
        priority = 1;
        break;
      case "Medium":
        priority = 2;
        break;
      case "Low":
        priority = 3;
        break;
      default:
    }
    setState(() {
      this.todo.priority = priority;
    });
  }

  void select(String value) async {
    switch (value) {
      case menuSave:
        save();
        break;
      case menuDelete:
        delete();
        break;
      case menuBack:
        Navigator.pop(context, true);
        break;
      default:
    }
  }
*/
  void delete() async {
    Navigator.pop(context, true);
    if (todo.id == null) {
      return;
    }
    int result;
    result = await helper.deleteTodo(todo.id);
    if (result != 0) {
      AlertDialog alertDialog = AlertDialog(
        title: Text("Kayıt Silindi."),
        //content: Text("The Todo has been deleted"),
      );
      showDialog(context: context, builder: (_) => alertDialog);
    }
    realAdSoyad = todo.title;
    realMasaNumara = todo.description;
  }

  void save() {
    todo.title = titleController.text;
    todo.description = descController.text;
    todo.date = new DateFormat.yMd().format(DateTime.now());
    if (todo.id != null) {
      helper.updateTodo(todo);
    } else {
      helper.insertTodo(todo);
    }
    realAdSoyad = todo.title;
    realMasaNumara = todo.description;
    Navigator.pop(context, true);
    showAlert(todo.id != null);
  }

  void showAlert(bool isUpdate) {
    AlertDialog alertDialog;
    if (isUpdate) {
      alertDialog = AlertDialog(
        title: Text("Kayıt güncellendi."),
        //content: Text("The Todo has been updated"),
      );
    } else {
      alertDialog = AlertDialog(
        title: Text("Kayıt oluşturuldu."),
        //content: Text("The Todo has been inserted"),
      );
    }
    showDialog(context: context, builder: (_) => alertDialog);
  }
}
