import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  //List toDoList
  List toDoList = [];
  //reference the box
  final _mybox = Hive.box('mybox');

  //my time ever open app
  void createInitialData() {
    toDoList = [
      [
        "Make Tutorial",
        false,
      ],
      [
        "Make Food",
        false,
      ]
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
