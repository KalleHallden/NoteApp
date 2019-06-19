import 'todo_items.dart';

class Note {
  String title;
  String note;
  DateTime dateOfLastEdit;
  DateTime dateOfCreation;
  List<TodoItem> todoList;

  Note(this.title, this.note, this.dateOfCreation, this.dateOfLastEdit, this.todoList);
}