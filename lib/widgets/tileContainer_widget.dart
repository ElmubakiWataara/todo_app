import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/widgets/tiletext.dart';

// ignore: must_be_immutable
class TileContainerWidget extends StatefulWidget {
  TileContainerWidget({
    super.key,
    required this.deviceSize,
    required this.todo,
    required this.index,
    this.deleteOnTap,
    this.editOnTap,
  });

  final Size deviceSize;
  TodoModel todo;
  int index;
  void Function()? editOnTap;
  void Function()? deleteOnTap;

  @override
  State<TileContainerWidget> createState() => _TileContainerWidgetState();
}

class _TileContainerWidgetState extends State<TileContainerWidget> {
  @override
  Widget build(BuildContext context) {
    TodoModel todo = widget.todo;
    setState(() {
      todo = widget.todo;
    });
    return Container(
      width: widget.deviceSize.width,
      height: widget.deviceSize.width * 0.15,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Tiletext(
                txt: todo.title,
                txtColor: Colors.white,
                txtSize: 28,
                txtFontweight: FontWeight.w600,
              ),
              Tiletext(
                txt: todo.description,
                txtColor: Colors.white,
                txtSize: 16,
                txtFontweight: FontWeight.w600,
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              IconButton(
                onPressed: widget.editOnTap,
                icon: const Icon(Icons.edit),
                color: Colors.white,
                iconSize: 36,
              ),
              IconButton(
                onPressed: widget.deleteOnTap,
                icon: const Icon(Icons.delete),
                color: Colors.redAccent.withOpacity(0.7),
                iconSize: 36,
              ),
            ],
          )
        ],
      ),
    );
  }
}
