// ignore: file_names
import 'package:flutter/material.dart';
import 'package:language_learning_app/Components/ListItems.dart';
import '../model/Items.dart';


class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Items> number = const [
    Items(
        sound: "sounds/VoiceNumbers/number_one_sound.mp3",
        image: "assets/images/numbers/number_one.png",
        Jsname: "ichi",
        Enname: "One"),
    Items(
      sound: "sounds/VoiceNumbers/number_two_sound.mp3",
        image: "assets/images/numbers/number_two.png",
        Jsname: "Ni",
        Enname: "Two"),
        Items(
          sound: "sounds/VoiceNumbers/number_three_sound.mp3",
        image: "assets/images/numbers/number_three.png",
        Jsname: "San",
        Enname: "Three"),
        Items(
          sound: "sounds/VoiceNumbers/number_four_sound.mp3",
        image: "assets/images/numbers/number_four.png",
        Jsname: "Shi",
        Enname: "Four"),
        Items(
          sound: "sounds/VoiceNumbers/number_five_sound.mp3",
        image: "assets/images/numbers/number_five.png",
        Jsname: "Go",
        Enname: "Five"),
        Items(
          sound: "sounds/VoiceNumbers/number_six_sound.mp3",
        image: "assets/images/numbers/number_six.png",
        Jsname: "Roku",
        Enname: "Six"),
        Items(
          sound: "sounds/VoiceNumbers/number_seven_sound.mp3",
        image: "assets/images/numbers/number_seven.png",
        Jsname: "Sebun",
        Enname: "Seven"),
        Items(
          sound: "sounds/VoiceNumbers/number_eight_sound.mp3",
        image: "assets/images/numbers/number_eight.png",
        Jsname: "Hachi",
        Enname: "Eight"),
        Items(
          sound: "sounds/VoiceNumbers/number_nine_sound.mp3",
        image: "assets/images/numbers/number_nine.png",
        Jsname: "Kyu",
        Enname: "Nine"),
        Items(
          sound: "sounds/VoiceNumbers/number_ten_sound.mp3",
        image: "assets/images/numbers/number_ten.png",
        Jsname: "Ju",
        Enname: "Ten"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: const Text("Numbers"),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index) {
        return ListItems(number: number[index],color: Colors.blue,);
      },),
    );
  }
}
