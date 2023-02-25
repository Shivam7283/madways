import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madways/app/home/settings/settings_option.dart';
import 'package:provider/provider.dart';
import 'package:madways/common_widgets/avatar.dart';
import 'package:madways/common_widgets/show_alert_dialog.dart';
import 'package:madways/services/auth.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  Future<void> _signOut(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _confirmSigOut(BuildContext context) async {
    final didRequestSignOut = await showAlertDialog(
      context,
      title: 'Logout',
      content: 'Are you sure that you want to logout?',
      defaultActionText: 'yes',
      cancelActionText: 'cancel',
    );
    if (didRequestSignOut == true) {
      _signOut(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
            elevation: 10.0,
            child: ListView(children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              ListTile(
                //tileColor: Colors.black54,
                leading: Icon(Icons.money),
                title: Text(
                  'Subscribe',
                  //style: TextStyle(color: Colors.white),
                ),
                onTap: () => _confirmSigOut(context),
              ),
              ListTile(
                tileColor: Colors.blueGrey,
                leading: Icon(Icons.logout),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => _confirmSigOut(context),
              ),
              ListTile(
                leading: Icon(Icons.settings_suggest_outlined),
                title: Text('Settings'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingOption(),
                      ));
                },
              ),
            ])),
        appBar: AppBar(
          title: Text('Account'),
          actions: <Widget>[
            // FlatButton(
            //   height: 20.0,
            //   onPressed: () => _confirmSigOut(context),
            //   // child: Text(
            //   //   'Logout',
            //   //   style: TextStyle(color: Colors.white),
            //   // ),
            //   child: Icon(
            //     Icons.logout,
            //     color: Colors.white70,
            //   ),
            // ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(150),
            child: _buildUserInfo(auth.currentUser),
          ),
        ),

        body: Center(
          child: Container(
            child: Column(
              children: [
                FadeInImage.assetNetwork(
                    placeholder: 'Madceit',
                    image:
                        'https://firebasestorage.googleapis.com/v0/b/madways.appspot.com/o/posters%2Fmadways-removebg-preview.png?alt=media&token=098625ce-da57-42bf-819e-46428bb8d25e'),
                Text('Thanks for using our app.'),
              ],
            ),
          ),
        ),
        //body: _buildContents(context),
      ),
    );
  }

  Widget _buildUserInfo(User user) {
    return SafeArea(
      child: Column(
        children: [
          user.photoURL != null
              ? Avatar(
                  photoUrl: user.photoURL,
                  radius: 50,
                )
              : CircleAvatar(
                  child: Text(
                    user.isAnonymous ? 'M' : user.email.characters.first,
                    style: TextStyle(fontSize: 50.0),
                  ),
                  radius: 50,
                ),

          SizedBox(
            height: 10,
          ),
          //if (user.displayName != null)
          user.displayName != null && user.displayName.isNotEmpty
              ? Text(
                  'Hello  ' + user.displayName,
                  style: TextStyle(color: Colors.white),
                )
              : Text(
                  'Hello MadGineer',
                  style: TextStyle(color: Colors.white),
                ),
          SizedBox(
            height: 10,
          ),
          user.email != null && user.email.isNotEmpty
              ? Text(
                  ' You are signed in as: ' + user.email.toString(),
                  maxLines: 2,
                  //overflow: TextOverflow.fade,
                  style: TextStyle(color: Colors.white),
                )
              : Text(
                  ' Sign Up & have wonderful experience',
                  style: TextStyle(color: Colors.white),
                ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
