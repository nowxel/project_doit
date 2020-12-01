import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/sign_in_page.dart';
import 'constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                  Icons.notifications_none,
                color: Colors.grey,
              ),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        centerTitle: true,
        title: Text(
            "My Tasks",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.format_line_spacing,
                color: Colors.grey,
              ),

            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text("Sweet HOME"),
      ),
        floatingActionButton: PopupMenuButton<String>(
          child: Text("SORT BY"),
          onSelected: choiceAction,
          itemBuilder: (BuildContext context) {
            return Constants.chioses.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
          tooltip: 'Increment',
        )

    );
  }
  void choiceAction(String choice) {
    print('WORKING');
  }
}
