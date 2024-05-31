import 'package:flutter/material.dart';

showSnack(context, String title, int dura) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(milliseconds: dura),
      backgroundColor: Colors.blueGrey,
      content: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}


