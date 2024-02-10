import 'package:flutter/material.dart';
import 'package:toku_app/components/number_item.dart';
import 'package:toku_app/models/item_model.dart';

class NumbersPage extends StatelessWidget {
   const NumbersPage({Key? key}) : super(key: key);
  final List<ItemModel> numberlist = const [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        jaName: 'ichi',
        enName: 'One',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        jaName: 'ni',
        enName: 'Two',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        jaName: 'san',
        enName: 'Three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        jaName: 'shi',
        enName: 'Four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        jaName: 'go',
        enName: 'Five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        jaName: 'roku',
        enName: 'six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        jaName: 'sebun',
        enName: 'seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        jaName: 'hachi',
        enName: 'Eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        jaName: 'kyū',
        enName: 'Nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        jaName: 'jū',
        enName: 'Ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.brown[900],
          title: const Text(
            'Numbers',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: numberlist.length,
          itemBuilder: (context, index) {
            return Numbers(number: numberlist[index]);
          },
        ));
  }
}
