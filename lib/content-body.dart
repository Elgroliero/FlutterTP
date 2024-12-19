import 'package:flutter/material.dart';

class ContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.network(
              width: 125,
                fit: BoxFit.fill,
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK2nG24AYDm6FOEC7jIfgubO96GbRso2Xshu1f8abSYQ&s"),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("LaCrevette@Chocolate"), Text("50s", style: TextStyle(color: Colors.grey))],
                    ),
                    SizedBox(height: 8),
                    Text(
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                        "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                        "nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "
                        "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla "
                        "pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa "
                        "qui officia deserunt mollit anim id est laborum.")
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.reply), color: Colors.grey),
              IconButton(onPressed: () {}, icon: Icon(Icons.autorenew), color: Colors.grey),
              IconButton(onPressed: () {}, icon: Icon(Icons.star), color: Colors.grey),             ]
          ),
        )
      ],
    );
  }
}
