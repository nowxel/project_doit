import 'package:flutter/material.dart';
import 'package:rapido/rapido.dart';

class Tasker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Tasker',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: TaskerHomePage(),
    );
  }
}

class TaskerHomePage extends StatefulWidget {
  TaskerHomePage({Key key}) : super(key: key);

  @override
  _TaskerHomePageState createState() => _TaskerHomePageState();
}

class _TaskerHomePageState extends State<TaskerHomePage> {
  DocumentList documentList = DocumentList("To create task click the add button", labels: {
    "Complete": "done?",
    "Date": "date",
    "Task": "title",
    "Priority": "pri count",
    "Note": "subtitle"
  });

  @override
  Widget build(BuildContext context) {

    return DocumentListScaffold(documentList);
  }
}