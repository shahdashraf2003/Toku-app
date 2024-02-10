import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/item_model.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.phrases}) : super(key: key);
  final ItemModel phrases;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: const Color(0xff48A5CC),
      child: ItemInfo(iteminfo: phrases),
    );
  }
}
