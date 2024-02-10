import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  final ItemModel iteminfo;

  const ItemInfo({Key? key, required this.iteminfo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                iteminfo.jaName,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                iteminfo.enName,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            iteminfo.playSound();
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
