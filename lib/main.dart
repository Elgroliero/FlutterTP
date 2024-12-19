import 'package:flutter/material.dart';
import 'package:flutter_tp_rcda32/content-body.dart';
import 'package:flutter_tp_rcda32/footer.dart';
import 'package:flutter_tp_rcda32/header.dart';
import 'package:flutter_tp_rcda32/login-form.dart';

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
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent.shade400,
            title: Center(
                child: Text('Tweety !',
                    style: TextStyle(fontSize: 24, color: Colors.white))),
          ),
          body: Column(
            children: [Header(), LoginForm(), Expanded(child: ContentBody()), Footer()],
          ),
        ));
  }
}
