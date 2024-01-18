import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _todoBox = Hive.box('todoBox');

  // run this method if this 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Organizar minhas tarefas", false]
    ];
  }

  void loadData() {
    toDoList = _todoBox.get("TODOLIST");
  }

  void updateData() {
    _todoBox.put("TODOLIST", toDoList);
  }
}
