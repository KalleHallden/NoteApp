import 'package:flutter/material.dart';
import 'user.dart';
import 'note.dart';
import 'todo_items.dart';

Color redColor = new Color(0xFFdd4f65);
Color backgroundColor = new Color(0xFF212128);

TextStyle textStyle = new TextStyle(fontFamily: 'Avenir', fontSize: 12, color: backgroundColor);
TextStyle textStyleBold = new TextStyle(fontFamily: 'Avenir', fontSize: 12, fontWeight: FontWeight.bold, color: backgroundColor);
TextStyle titleStyleBig = new TextStyle(fontFamily: 'Avenir', fontSize: 50, fontWeight: FontWeight.bold, color: backgroundColor);
TextStyle titleStyle = new TextStyle(fontFamily: 'Avenir', fontSize: 40, fontWeight: FontWeight.bold, color: backgroundColor);
TextStyle smallTitleStyle = new TextStyle(fontFamily: 'Avenir', fontSize: 30, fontWeight: FontWeight.bold, color: backgroundColor);
TextStyle buttonTextStyleWhite = new TextStyle(fontFamily: 'Avenir', fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);

Note firstNote = new Note("My First Note", "Note to self, stop buying pringles hello I am kalle  is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", DateTime.now(), DateTime.now(), []);

User user = new User([firstNote]);