import 'package:flutter/material.dart';
import 'add_task_view.dart';
import 'package:flutter_todo_app/task.dart';
import 'package:provider/provider.dart';
import '../screens/widgets/data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, value, Widget? child) {
        return  ListView.builder(
          itemBuilder: (context, indexPath) {
            final tasks = value.task[indexPath];
            return Tasktile(
                longPress: (){
                  value.remove(tasks);
                },
                // isChecked: Provider.of<TaskData>(context).task[indexPath].isDone,
                isChecked: tasks.isDone,
                taskTitle: tasks.name,
                toggleCheckBox: (values){
                  value.updateTask(tasks);
                }
            );
          },
          itemCount: value.taskCount,
        );
      },
    );
  }
}

class Tasktile extends StatelessWidget {
  late final String taskTitle;
  final bool isChecked;
  final Function(bool? value) toggleCheckBox;
  final Function() longPress;


  Tasktile(
      {required this.isChecked,
      required this.taskTitle,
      required this.toggleCheckBox,
      required this.longPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.red, value: isChecked, onChanged: toggleCheckBox),
    );
  }
}
