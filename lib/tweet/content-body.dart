import 'package:flutter/material.dart';

import '../models/Tweet.dart';

class ContentBody extends StatelessWidget {
  Tweet tweet;

  ContentBody(this.tweet);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.network(width: 125, fit: BoxFit.fill, tweet.profile!),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(tweet.author!),
                        Text("${DateTime.now().difference(tweet.createdDate!).inDays} jours", style: TextStyle(color: Colors.grey))
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        tweet.message!)
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.reply), color: Colors.grey),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.autorenew),
                color: Colors.grey),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.star), color: Colors.grey),
          ]),
        )
      ],
    );
  }
}
