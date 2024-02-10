import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/item_model.dart';
class ColorItem  extends StatelessWidget {
  const ColorItem({Key? key, required this.coloritem}) : super(key: key);
  final ItemModel coloritem;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: const Color(0xff7D40A2),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF4D9),
            child: Image.asset(
              coloritem.image!,
            ),
          ),
          Expanded(child: ItemInfo(iteminfo: coloritem)),
        ],
      ),
    );
  }
}