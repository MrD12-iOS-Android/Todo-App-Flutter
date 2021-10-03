import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/widgets/Task.dart';
import 'package:provider/provider.dart';
import 'screens/task_screen.dart';
import 'screens/widgets/data.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (BuildContext context) { return TaskData(); },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
