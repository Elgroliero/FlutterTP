import 'package:flutter/material.dart';
import 'package:flutter_tp_rcda32/auth/login-page.dart';
import 'package:flutter_tp_rcda32/tweet/tweet-page.dart';

void main() {
  runApp(const TwitterApp());
}

class TwitterApp extends StatelessWidget {
  const TwitterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Twitter',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent)),
        routes: {
          "/": (context) => LoginPage(),
          "/tweets": (context) => TweetyPage(),
        },
        initialRoute: "/");
  }
}
