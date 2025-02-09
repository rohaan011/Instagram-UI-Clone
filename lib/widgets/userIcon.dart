import 'package:flutter/material.dart';

userIcon(String url, String userName) {
  Column(
    children: [
      CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(url),
      ),
      Text(userName)
    ],
  );
}
