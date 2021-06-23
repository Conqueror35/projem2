import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/model/todo.dart';
import 'package:flutter_app/screens/tododetail.dart';
import 'package:flutter_app/utils/dbhelper.dart';

class TodoList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TodoListState();
  }
}

class TodoListState extends State {
  DbHelper helper = DbHelper();
  List<Todo> todos;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    if (todos == null) {
      todos = List<Todo>();
      getData();
    }

    return Scaffold(
      body: todoListItems(),
      appBar: AppBar(
        title: Text("Ad, Soyad, Masa Numarası"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                if (todos.length < 2) {
                  navigateToDetail(Todo("", 2, ""));
                }
              },
              tooltip: 'Add New Todo',
              child: Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                if (todos.length == 1) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Foto()));
                }
              },
              //tooltip: 'Add New Todo',
              child: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }

  ListView todoListItems() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) => Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                //backgroundColor: getColor(this.todos[position].priority),
                child: Text(
                  "AD",
                  //this.todos[position].id.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(this.todos[position].title),
              subtitle: Text(this.todos[position].description),
              onTap: () {
                navigateToDetail(this.todos[position]);
              },
            )));
  }

  void navigateToDetail(Todo todo) async {
    bool result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => TodoDetail(todo)));
    if (result == true) {
      getData();
    }
  }

  void getData() {
    final todosFuture = helper.getTodos();
    todosFuture.then((result) => {
          setState(() {
            todos = result;
            count = todos.length;
          })
        });
  }

  /*
  Color getColor(int priority) {
    switch (priority) {
      case 1:
        return Colors.red;
      case 2:
        return Colors.orange;
      case 3:
        return Colors.green;
      default:
        return Colors.green;
    }
  }*/

}
