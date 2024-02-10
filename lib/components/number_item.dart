import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/item_model.dart';

class Numbers extends StatelessWidget {
  const Numbers({Key? key, required this.number}) : super(key: key);

  final ItemModel number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: const Color(0xffF99531),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF4D9),
            child: Image.asset(
              number.image!,
            ),
          ),
         Expanded(child: ItemInfo(iteminfo: number)),
        ],
      ),
    );
  }
}
