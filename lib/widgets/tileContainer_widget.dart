import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tiletext.dart';

class TileContainerWidget extends StatelessWidget {
  const TileContainerWidget({
    super.key,
    required this.deviceSize,
  });

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceSize.width,
      height: deviceSize.width * 0.15,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Tiletext(
                txt: 'Title',
                txtColor: Colors.white,
                txtSize: 28,
                txtFontweight: FontWeight.w600,
              ),
              Tiletext(
                txt: 'Description',
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
                onPressed: () {},
                icon: const Icon(Icons.edit),
                color: Colors.white,
                iconSize: 36,
              ),
              IconButton(
                onPressed: () {},
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
