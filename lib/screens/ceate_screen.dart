import 'package:flutter/material.dart';

import '../widgets/textForm_widget.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  var titletxtController = TextEditingController();
  var desctxtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("create A Todo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          textForm(
            titletxtController: titletxtController,
            desctxtController: desctxtController,
          ),
          // textForm(titletxtController: titletxtController)
        ],
      ),
    );
  }
}
