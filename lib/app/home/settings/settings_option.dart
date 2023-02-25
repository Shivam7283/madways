import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'about/about_us.dart';
import 'help/help_option.dart';

class SettingOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                "About",
                style: TextStyle(),
              ),
              leading: Icon(
                Icons.info_outline,
              ),
              trailing: Icon(
                Icons.chevron_right,
              ),
              onTap: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (context) => AboutUs(),
                    //fullscreenDialog: true,
                  ),
                );
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            ListTile(
              title: Text(
                "Help",
                //style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.help_outline,
                //  color: Colors.white,
              ),
              trailing: Icon(
                Icons.chevron_right,
                //color: Colors.white,
              ),
              onTap: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (context) => HelpPage(),
                    //fullscreenDialog: true,
                  ),
                );
              },
            ),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
