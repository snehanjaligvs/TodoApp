import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

import '../modal/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final onTodoChanged;
  final onDelete;
  const TodoItem(
      {Key? key,
      required this.todo,
      required this.onTodoChanged,
      required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        onTap: () {
          onTodoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.green,
        ),
        title: Text(
          todo.todoText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: black,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            //alignment: Alignment.center,
            iconSize: 19,
            icon: Icon(Icons.delete),
            onPressed: () {
              onDelete(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
