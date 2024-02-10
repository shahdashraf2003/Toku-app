import 'package:flutter/material.dart';
import 'package:toku_app/components/color_item.dart';
import 'package:toku_app/models/item_model.dart';

// ignore: must_be_immutable
class ColorPage extends StatelessWidget {
  ColorPage({Key? key}) : super(key: key);

  List<ItemModel> colors = [
    const ItemModel(
        enName: 'Red',
        jaName: 'Aka',
        image: 'assets/images/colors/color_red.png',
        sound: 'sounds/colors/red.wav'),
    const ItemModel(
        enName: 'Green',
        jaName: 'Midori',
        image: 'assets/images/colors/color_green.png',
        sound: 'sounds/colors/green.wav'),
    const ItemModel(
        enName: 'Brown',
        jaName: 'Chairo',
        image: 'assets/images/colors/color_brown.png',
        sound: 'sounds/colors/brown.wav'),
    const ItemModel(
        enName: 'Gray',
        jaName: 'Haiiro',
        image: 'assets/images/colors/color_gray.png',
        sound: 'sounds/colors/gray.wav'),
    const ItemModel(
        enName: 'Black',
        jaName: 'Kuro',
        image: 'assets/images/colors/color_black.png',
        sound: 'sounds/colors/black.wav'),
    const ItemModel(
        enName: 'White',
        jaName: 'Shiro',
        image: 'assets/images/colors/color_white.png',
        sound: 'sounds/colors/white.wav'),
    const ItemModel(
        enName: 'Yellow',
        jaName: 'Kiiro',
        image: 'assets/images/colors/yellow.png',
        sound: 'sounds/colors/yellow.wav'),
    const ItemModel(
        enName: 'Dusty Yellow',
        jaName: 'kuchiba-iro',
        image: 'assets/images/colors/color_dusty_yellow.png',
        sound: 'sounds/colors/dusty yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.brown[900],
        title: const Text(
          'Colors',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ColorItem(coloritem: colors[index]);
        },
      ),
    );
  }
}
