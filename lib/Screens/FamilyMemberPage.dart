import 'package:flutter/material.dart';
import '../Components/ListItems.dart';
import '../model/Items.dart';

class FamilyMember extends StatelessWidget {
  const FamilyMember({super.key});
  final List<Items> number = const [
    Items(
        sound: "sounds/family_members/family_father.wav",
        image: "assets/images/family_members/family_father.png",
        Jsname: "chichioy",
        Enname: "Father"),
    Items(
      sound: "sounds/family_members/family_daughter.wav",
        image: "assets/images/family_members/family_daughter.png",
        Jsname: "Musume",
        Enname: "daughter"),
        Items(
          sound: "sounds/family_members/family_grand_father.wav",
        image: "assets/images/family_members/family_grandfather.png",
        Jsname: "Ojtsan",
        Enname: "Grand Father"),
        Items(
          sound: "sounds/family_members/family_mother.wav",
        image: "assets/images/family_members/family_mother.png",
        Jsname: "Hahacya",
        Enname: "mother"),
        Items(
          sound: "sounds/family_members/family_grand_mother.wav",
        image: "assets/images/family_members/family_grandmother.png",
        Jsname: "Sobo",
        Enname: "Grand_Mother"),
        Items(
          sound: "sounds/family_members/family_older_bother.wav",
        image: "assets/images/family_members/family_older_brother.png",
        Jsname: "Nisan",
        Enname: "older_bother"),
        Items(
          sound: "sounds/family_members/family_older_sister.wav",
        image: "assets/images/family_members/family_older_sister.png",
        Jsname: "Ane",
        Enname: "older_sister"),
        Items(
          sound: "sounds/family_members/family_son.wav",
        image: "assets/images/family_members/family_son.png",
        Jsname: "Musuko",
        Enname: "son"),
        Items(
          sound: "sounds/family_members/family_younger_brohter.wav",
        image: "assets/images/family_members/family_younger_brother.png",
        Jsname: "ototo",
        Enname: "younger brohter"),
        Items(
          sound: "sounds/family_members/family_younger_sister.wav",
        image: "assets/images/family_members/family_younger_sister.png",
        Jsname: "Imoto",
        Enname: "younger_sister"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text("Family Member"),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index) {
        return ListItems(number: number[index],color: Colors.green,);
      },),
    );
  }
}