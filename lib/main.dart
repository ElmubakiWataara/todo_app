// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/screens/create_screen.dart';
import 'package:todo_app/screens/edit_screen.dart';
import 'package:todo_app/widgets/tileContainer_widget.dart';
import 'package:todo_app/widgets/tiletext.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Todo App ',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.sizeOf(context);
    List<TodoModel> myTodolist = [];
    setState(() {
      myTodolist = todosList;
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20,
              // child: Text('hello'),
            ),
            ...List.generate(myTodolist.length, (index) {
              return TileContainerWidget(
                deviceSize: deviceSize,
                todo: myTodolist[index],
                index: index,
                editOnTap: () async {
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return EditScreen(
                      todo: myTodolist[index],
                      index: index,
                    );
                  }));
                  setState(() {});
                },
                deleteOnTap: () {
                  todosList.removeAt(
                    index,
                  );
                  setState(() {});
                },
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const CreateScreen();
                },
              ),
            );
            setState(() {});
          },
          child: Icon(Icons.add)),
    );
  }
}

//dark lavender
