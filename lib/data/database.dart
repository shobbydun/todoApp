import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List<List<dynamic>> toDoList = [];

  // Reference to our box
  final _myBox = Hive.box("MyBox");

  // Run this method for the first time ever
  void createInitialData() {
    toDoList = [
      ["Read a book", false],
      ["Cook supper", false],
    ];
    updateDatabase(); // Ensure the initial data is saved
  }

  // Load data from database
  void loadData() {
    var data = _myBox.get("TODOLIST");
    if (data != null) {
      toDoList = List<List<dynamic>>.from(data);
    } else {
      createInitialData(); // Set initial data if no data is found
    }
  }

  // Update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
