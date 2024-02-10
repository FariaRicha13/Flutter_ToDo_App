import 'package:flutter/material.dart';
import 'package:todo_flutter/constants/color.dart';
import 'package:todo_flutter/model/todo.dart';

class ToDoItem extends StatelessWidget{
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);
  @override
  Widget build(BuildContext  context){
    return Container(
      margin: EdgeInsets.only(bottom: 20 ),
      child: ListTile(
      onTap: () {
          // print('Clicked on Todo Item.');
          onToDoChanged(todo);
        },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20) 
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      tileColor: Colors.white,
      leading: Icon(
      todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
      color: tdBlue,),
      title: Text(todo.todoText!, 
      style: TextStyle(
        fontSize: 16,
        color:tdBrown,
        decoration: todo.isDone? TextDecoration.lineThrough : null, 
        ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(4),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(todo.id);
              },
          ),
        ),
    ));
  }
}