import 'package:flutter/cupertino.dart';

class TaskDM{
   late String name;
   late bool isDone;
   TaskDM({ required this.name, this.isDone = false});

   void toggleDone(){
     isDone = !isDone;
   }


}