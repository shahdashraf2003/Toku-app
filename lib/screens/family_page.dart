import 'package:flutter/material.dart';
import 'package:toku_app/components/family_item.dart';
import 'package:toku_app/models/item_model.dart';

class FamilyPage extends StatelessWidget {
  FamilyPage({Key? key}) : super(key: key);
  final List<ItemModel> familylist = [
    const ItemModel(
        jaName: 'ojīsan',
        enName: 'Grandfather',
        image: 'assets/images/family_members/family_grandfather.png',
        sound: 'sounds/family_members/grand father.wav'),
    const ItemModel(
        jaName: 'obāsan',
        enName: 'Grandmother',
        image: 'assets/images/family_members/family_grandmother.png',
        sound: 'sounds/family_members/grand mother.wav'),
    const ItemModel(
        jaName: 'otōsan',
        enName: 'Father',
        image: 'assets/images/family_members/family_father.png',
        sound: 'sounds/family_members/father.wav'),
    const ItemModel(
        jaName: 'okāsan',
        enName: 'Mother',
        image: 'assets/images/family_members/family_mother.png',
        sound: 'sounds/family_members/mother.wav'),
    const ItemModel(
        jaName: 'onīsan',
        enName: 'Older Brother',
        image: 'assets/images/family_members/family_older_brother.png',
        sound: 'sounds/family_members/older bother.wav'),
    const ItemModel(
        jaName: 'onēsan',
        enName: 'Older Sister',
        image: 'assets/images/family_members/family_older_sister.png',
        sound: 'sounds/family_members/older sister.wav'),
    const ItemModel(
        jaName: 'otōto-san',
        enName: 'Younger Brother',
        image: 'assets/images/family_members/family_younger_brother.png',
        sound: 'sounds/family_members/younger brohter.wav'),
    const ItemModel(
        jaName: 'imōto-san',
        enName: 'Younger sister',
        image: 'assets/images/family_members/family_younger_sister.png',
        sound: 'sounds/family_members/younger sister.wav'),
    const ItemModel(
        jaName: 'musuko',
        enName: 'Son',
        image: 'assets/images/family_members/family_son.png',
        sound: 'sounds/family_members/son.wav'),
    const ItemModel(
        jaName: 'musume',
        enName: 'Daughter',
        image: 'assets/images/family_members/family_daughter.png',
        sound: 'sounds/family_members/daughter.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.brown[900],
          title: const Text(
            'Family Members',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: familylist.length,
          itemBuilder: (context, index) {
            return FamilyItem(family: familylist[index]);
          },
        ));
  }
}
