import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_model.dart';
import '../widgets/inputField_widget.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  var titletxtController = TextEditingController();
  var desctxtController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("create A Todo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //title
                TextForm(
                  txtController: titletxtController,
                  hintText: 'Input Your todos here',
                  validator: (p0) {
                    if (p0 != null && p0.isNotEmpty) {
                      return null;
                    } else {
                      return "Tiltle can't be empty";
                    }
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                // description
                TextForm(
                  txtController: desctxtController,
                  hintText: 'Describe the todos',
                  maxLine: 6,
                  validator: (p0) {
                    if (p0 != null && p0.isNotEmpty) {
                      return null;
                    } else {
                      return "Description can't be empty";
                    }
                  },
                ),
                const SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.purpleAccent),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print(titletxtController.text);
                      print(desctxtController.text);
                      todosList.add(TodoModel(
                        title: titletxtController.text,
                        description: desctxtController.text,
                      ));
                      Navigator.pop(context);
                    }
                    setState(() {});
                  },
                  child: const Text(
                    "create",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
