import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/inputField_widget.dart';

import '../models/todo_model.dart';

class EditScreen extends StatefulWidget {
  final TodoModel todo;
  final int index;
  EditScreen({Key? key, required this.todo, required this.index})
      : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  var txtController = TextEditingController();
  var descController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  void iniState() {
    txtController = TextEditingController(text: widget.todo.title);
    descController = TextEditingController(text: widget.todo.description);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Edit : ${widget.todo.title}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextForm(
                txtController: txtController,
                hintText: widget.todo.title,
                validator: (p0) {
                  if (p0 != null && p0.isNotEmpty) {
                    return null;
                  } else {
                    return "Title can't be empty";
                  }
                },
              ),
              const SizedBox(
                height: 50,
              ),
              TextForm(
                txtController: descController,
                hintText: widget.todo.description,
                maxLine: 6,
                validator: (p0) {
                  if (p0 != null && p0.isNotEmpty) {
                    return null;
                  } else {
                    return "Decriptopn can't be empty ";
                  }
                },
              ),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.purpleAccent.shade100),
                  ),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState!.save();

                      createTodo(
                          index: widget.index,
                          data: TodoModel(
                            title: txtController.text,
                            description: descController.text,
                          ));
                      setState(() {});
                      Navigator.pop(context);
                    }
                    setState(() {});
                  },
                  child: const Text(
                    "Create Todo",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
