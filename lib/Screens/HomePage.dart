import 'package:flutter/material.dart';
import 'package:language_learning_app/Screens/ColorsPage.dart';
import 'package:language_learning_app/Screens/FamilyMemberPage.dart';
import 'package:language_learning_app/Screens/NumbersPage.dart';
import 'package:language_learning_app/Screens/phrasesPage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  Widget bigCircle = Padding(
    padding: const EdgeInsets.only(top: 90, left: 100, right: 100, bottom: 100),
    child: Container(
      width: 200.0,
      height: 300.0,
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TuKo"),
        ),
        body: Stack(
          children: <Widget>[
            bigCircle,
            //NumbersPage
            Positioned(
              child: CircleButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const NumbersPage();
                    }));
                  },
                  iconData: Icons.numbers),
              left: 170.0,
              bottom: 360,
            ),
            const SizedBox(
              height: 150,
            ),

            //FamilyMember
            Positioned(
              child: CircleButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const FamilyMember();
                        },
                      ),
                    );
                  },
                  iconData: Icons.family_restroom_outlined),
              top: 210.0,
              left: 0,
              right: 270,
            ),
            //ColorsPage
            Positioned(
              child: CircleButton(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ColorsPage();
                      },
                    ));
                  },
                  iconData: Icons.color_lens),
              top: 350.0,
              left: 170.0,
            ),

            //phrasesPage
            Positioned(
              child: CircleButton(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const phrasesPage();
                      },
                    ));
                  },
                  iconData: Icons.phonelink_erase_sharp),
              top: 210.0,
              left: 305.0,
            ),
          ],
        ));
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;

  const CircleButton({Key? key, required this.onTap, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 60.0;

    return InkResponse(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.blue[300],
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color: Colors.black,
        ),
      ),
    );
  }
}
