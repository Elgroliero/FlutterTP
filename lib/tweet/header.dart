import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  String? label;
  Icon? icon;

  HeaderButton({this.label, this.icon});

  Widget buttonWidget() {
    if (icon != null) {
      return IconButton(onPressed: () {}, icon: icon!, color: Colors.white);
    }
    return TextButton(
        onPressed: () {},
        child: Text(label != null ? label! : '',
            style: TextStyle(color: Colors.white, fontSize: 18)));
  }

  @override
  Widget build(BuildContext context) {
    return buttonWidget();
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
            HeaderButton(icon: Icon(Icons.edit)),
            HeaderButton(label: "Accueil"),
            HeaderButton(icon: Icon(Icons.search)),
          ],
        ),
      ),
    );
  }
}
