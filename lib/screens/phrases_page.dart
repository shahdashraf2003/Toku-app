import 'package:flutter/material.dart';
import 'package:toku_app/components/phrases_item.dart';
import 'package:toku_app/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({Key? key}) : super(key: key);
  final List<ItemModel> phraseslist = [
    const ItemModel(
        jaName: 'rai masu ka',
        enName: 'Are you coming',
        sound: 'sounds/phrases/are you coming.wav'),
    const ItemModel(
        jaName: 'koudoku suru koto wa wasure nai de kudasai',
        enName: 'Dont forget to subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    const ItemModel(
        jaName: 'choushi wa dou desu ka',
        enName: 'How are you feeling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    const ItemModel(
        jaName: 'watashi wa dobutsuenmae ga daisuk desu',
        enName: 'I love animal ',
        sound: 'sounds/phrases/i_love_anime.wav'),
    const ItemModel(
        jaName: 'programming ga daisuk',
        enName: 'I love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    const ItemModel(
        jaName: 'programming ga kantan',
        enName: 'Programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    const ItemModel(
        jaName: 'what is your name',
        enName: 'anata no namae wa nani desu ka',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    const ItemModel(
        jaName: 'doko ni iki masu ka',
        enName: 'Where are you going',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    const ItemModel(
        jaName: 'e 、 watashi wa rai te iya masu',
        enName: 'yes ,I am coming',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.brown[900],
          title: const Text(
            'Phrases',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: phraseslist.length,
          itemBuilder: (context, index) {
            return PhrasesItem(phrases: phraseslist[index]);
          },
        ));
  }
}
