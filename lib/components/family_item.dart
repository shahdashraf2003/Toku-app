import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/item_model.dart';

class FamilyItem extends StatelessWidget {
  const FamilyItem({Key? key, required this.family}) : super(key: key);
  final ItemModel family;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: const Color(0xff548634),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF4D9),
            child: Image.asset(
              family.image!,
            ),
          ),
          Expanded(child: ItemInfo(iteminfo: family)),
        ],
      ),
    );
  }
}
