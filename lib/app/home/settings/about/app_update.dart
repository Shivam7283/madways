import 'package:flutter/material.dart';

class AppUpdates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Updates"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "App Updates",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "Last updated: March 10, 2023",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(),
                Text(
                  "App version: 1.0.0\n" +
                      "© 2023 Madgineers. All rights reserved.",
                  style: TextStyle(color: Colors.black),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
