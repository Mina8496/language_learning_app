import 'package:flutter/material.dart';
import '../Components/ListItems.dart';
import '../model/Items.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Items> number = const [
    Items(
        sound: "sounds/colors/black.wav",
        image: "assets/images/colors/color_black.png",
        Jsname: "Burakku",
        Enname: "Black"),
    Items(
        sound: "sounds/colors/brown.wav",
        image: "assets/images/colors/color_brown.png",
        Jsname: "Chairo",
        Enname: "brown"),
    Items(
        sound: "sounds/colors/dusty_yellow.wav",
        image: "assets/images/colors/color_dusty_yellow.png",
        Jsname: "Hokori ppi kiiro",
        Enname: "dusty yellow"),
    Items(
        sound: "sounds/colors/gray.wav",
        image: "assets/images/colors/color_gray.png",
        Jsname: "Gure",
        Enname: "Gray"),
    Items(
        sound: "sounds/colors/green.wav",
        image: "assets/images/colors/color_green.png",
        Jsname: "Midori",
        Enname: "Green"),
    Items(
        sound: "sounds/colors/red.wav",
        image: "assets/images/colors/color_red.png",
        Jsname: "Aka",
        Enname: "Red"),
    Items(
        sound: "sounds/colors/white.wav",
        image: "assets/images/colors/color_white.png",
        Jsname: "Shiro",
        Enname: "White"),
    Items(
        sound: "sounds/colors/yellow.wav",
        image: "assets/images/colors/yellow.png",
        Jsname: "Ki",
        Enname: "yellow"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: const Text("Colors"),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index) {
          return ListItems(
            number: number[index],
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
