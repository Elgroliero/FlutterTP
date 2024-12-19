import 'package:flutter/material.dart';
import 'package:flutter_tp_rcda32/auth/login-form.dart';
import 'package:flutter_tp_rcda32/common/tweet-app-bar.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TweetAppBar(title: "Connexion"),
      body: LoginForm(),
    );
  }

}