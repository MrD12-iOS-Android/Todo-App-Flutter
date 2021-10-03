import 'package:flutter/material.dart';
import 'package:flutter_todo_app/task.dart';
import 'package:flutter_todo_app/screens/widgets/data.dart';
import 'package:provider/provider.dart';

class AddTaskView extends StatelessWidget {

  late String newTextAdd;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.red
                ),
              ),
              TextField(
                onChanged: (newText){
                  newTextAdd = newText;
                },
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                onPressed: (){
                  print(newTextAdd);
                  Provider.of<TaskData>(context).addData(newTextAdd);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
