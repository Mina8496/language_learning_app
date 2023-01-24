import 'package:flutter/material.dart';

class Category_Items extends StatelessWidget {
  Category_Items({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
              padding:const EdgeInsets.only(left: 24),
              alignment: Alignment.centerLeft,
              color: Colors.blue[200],
              height: 65,
              width: double.infinity,
              child: Text(text!,
              style: TextStyle(
              color: color,
                fontSize: 20,
              ),
              ),
            ),
    );
  }
}