import 'package:flutter/material.dart';
import 'models/global.dart';
import 'models/note.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height-220,
                  margin: EdgeInsets.only(top: 220),
                  child: ListView(
                    padding: EdgeInsets.only(top: 100),
                    children: getNotes(),
                  ),
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40)),
                    color: Colors.white,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 100,left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Notes", style: titleStyleBig),
                        Container(
                          height: 70,
                          width: 70,
                          child: IconButton(
                            icon: Icon(Icons.menu, color: backgroundColor, size: 60,),
                            onPressed: () {

                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 220, left: MediaQuery.of(context).size.width/2 - 30),
                  height: 60,
                  width: 60,
                  child: FloatingActionButton(
                    onPressed: () {
                      
                    },
                    backgroundColor: redColor,
                    child: Icon(Icons.add, size: 50),
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }

  List<Widget> getNotes() {
    List<Widget> notes = [];
    for (Note note in user.notes) {
      notes.add(getNote(note));
    }
    return notes;
  }

  Widget getNote(Note note) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
      height: 100,
      decoration: BoxDecoration(
        color: redColor,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(note.title, style: smallTitleStyle,),
          Text(getSmallerText(note.note), style: textStyleBold,)
        ],
      ),
    );
  }

  String getSmallerText(String text) {
    String newText = '';
    for (int i = 0; i < 100; i++) {
      String character = text.substring(i, i+ 1);
      if (i > 85) {
        if (character == " ") {
          break;
        }
      }
      newText += character;
    }
    newText += "...";
    return newText;
  }
}
