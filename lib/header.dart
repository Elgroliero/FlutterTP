import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  String label;

  HeaderButton(this.label);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child:
            Text(label, style: TextStyle(color: Colors.white, fontSize: 18)));
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF58B0F0),
      child: Padding(
        padding: EdgeInsets.only(top: 25, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HeaderButton("Nouveau"),
            HeaderButton("Accueil"),
            HeaderButton("Rechercher"),
          ],
        ),
      ),
    );
  }
}
