import 'package:flutter/material.dart';
import 'package:language_learning_app/model/Items.dart';
import 'package:audioplayers/audioplayers.dart';





class ListItems extends StatelessWidget {
  const ListItems({ required this.number, required this.color});
  final Color color;
  final Items number;

  @override
  Widget build(BuildContext context) {
    return number.image == null? Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Colors.white,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number.Jsname,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(number.Enname,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () async {
              try {
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
              }
              catch(ex) {
                print ("NO Sound");
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    )  : Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Colors.white, child: Image.asset(number.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number.Jsname,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(number.Enname,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () async {
              try {
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
              }
              catch(ex) {
                print ("NO Sound");
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
