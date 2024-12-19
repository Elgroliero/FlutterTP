import 'package:flutter/material.dart';
import '../common/tweet-app-bar.dart';
import 'content-body.dart';
import 'footer.dart';
import 'header.dart';

class TweetyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String? email = ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      appBar: TweetAppBar(title: "Tweety !", email: email),
      body: Column(
        children: [
          Header(),
          Expanded(child: ContentBody()),
          Footer()
        ],
      ),
    );
  }
}
