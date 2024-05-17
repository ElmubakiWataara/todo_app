import 'package:flutter/material.dart';

class textForm extends StatelessWidget {
  const textForm({
    super.key,
    required this.titletxtController,
    required this.desctxtController,
  });

  final TextEditingController titletxtController;
  final TextEditingController desctxtController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: titletxtController,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            hintText: "Title",
            hintStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 100,
          child: TextFormField(
            controller: desctxtController,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
                hintText: "Description",
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
          ),
        ),
      ],
    );
  }
}
