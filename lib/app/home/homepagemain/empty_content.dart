import 'package:flutter/material.dart';

class EmptyContent extends StatelessWidget {
  const EmptyContent({
    Key key,
  }) : super(key: key);

  // final String title;
  // final String message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sorry Mad..!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.block,
              size: 50.0,
              color: Colors.blueGrey,
            ),
            Text(
              'Nothing to show here',
              style: TextStyle(fontSize: 22, color: Colors.black54),
            ),
            Text(
              'It will be updated soon',
              style: TextStyle(fontSize: 11, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
