
import 'package:flutter/material.dart';
 // ignore: must_be_immutable
 class Category extends StatelessWidget {
  Category({Key? key, this.text, this.color,this.onTap}) : super(key: key);
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 90.0,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24.0),
        color: color!,
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
