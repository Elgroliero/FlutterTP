import 'package:flutter/material.dart';


class TweetAppBar extends StatelessWidget implements PreferredSizeWidget{

  String? email;
  String title;

  TweetAppBar({required String this.title, String? this.email = ''});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text('$title ! $email'), backgroundColor: Colors.blue);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}