import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<TaskDM> task = [
    TaskDM(name: 'Buy 1'),
    TaskDM(name: 'Buy 2'),
  ];
  UnmodifiableListView<TaskData> get _tasks {
    return UnmodifiableListView(_tasks);
  }


  int get taskCount {
    return task.length;
  }

  void addData(newText){
    final text = TaskDM(name: newText);
    task.add(text);
    notifyListeners();
  }

  void updateTask( TaskDM taskDM){
    taskDM.toggleDone();
    notifyListeners();
  }

  void remove(TaskDM taskDM){
    task.remove(taskDM);
    notifyListeners();
  }
}