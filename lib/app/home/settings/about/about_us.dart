import 'package:flutter/material.dart';
import 'package:madways/app/home/settings/about/app_update.dart';
import 'package:madways/app/home/settings/about/privacy_policies.dart';
import 'package:madways/app/home/settings/about/term_of_use.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('About'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(),
                ),
                // leading: Icon(
                //   Icons.info_outline,
                // ),
                trailing: Icon(
                  Icons.chevron_right,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PrivacyPolicy(),
                      fullscreenDialog: true,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 8.0,
              ),
              ListTile(
                title: Text(
                  "Terms of Use",
                  //style: TextStyle(color: Colors.white),
                ),
                // leading: Icon(
                //   Icons.help_outline,
                //   //  color: Colors.white,
                // ),
                trailing: Icon(
                  Icons.chevron_right,
                  //color: Colors.white,
                ),
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                      builder: (context) => TermUse(),
                      fullscreenDialog: true,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              ListTile(
                title: Text(
                  "App Updates",
                  //style: TextStyle(color: Colors.white),
                ),
                // leading: Icon(
                //   Icons.help_outline,
                //   //  color: Colors.white,
                // ),
                trailing: Icon(
                  Icons.chevron_right,
                  //color: Colors.white,
                ),
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                      builder: (context) => AppUpdates(),
                      fullscreenDialog: true,
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
      ),
    );
  }
}
