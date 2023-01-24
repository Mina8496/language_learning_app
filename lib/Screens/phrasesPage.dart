import 'package:flutter/material.dart';
import '../Components/ListItems.dart';
import '../model/Items.dart';

class phrasesPage extends StatelessWidget {
  const phrasesPage({super.key});
  final List<Items> number = const [
    Items(
        sound: "sounds/phrases/are_you_coming.wav",
        Jsname: "来ますか",
        Enname: "are you coming"),
    Items(
        sound: "sounds/phrases/dont_forget_to_subscribe.wav",
        Jsname: "購読することを忘れないでください",
        Enname: "dont forget to subscribe"),
    Items(
        sound: "sounds/phrases/how_are_you_feeling.wav",
        Jsname: "ご気分はいかがですか。",
        Enname: "how are you feeling"),
    Items(
        sound: "sounds/phrases/i_love_anime.wav",
        Jsname: "私はアニメが大好きです",
        Enname: "i love anime"),
    Items(
        sound: "sounds/phrases/i_love_programming.wav",
        Jsname: "私はプログラミングが大好きです",
        Enname: "i love programming"),
    Items(
        sound: "sounds/phrases/what_is_your_name.wav",
        Jsname: "名前はなんですか",
        Enname: "what is your name"),
    Items(
        sound: "sounds/phrases/where_are_you_going.wav",
        Jsname: "どこに行くの",
        Enname: "where are you going"),
    Items(
        sound: "sounds/phrases/yes_im_coming.wav",
        Jsname: "はい、来ます",
        Enname: "yes im coming"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text("Phrases"),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index) {
          return ListItems(
            number: number[index],
            color: Colors.blue,
          );
        },
      ),
    );
  }
}
