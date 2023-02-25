import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:madways/app/sign_in/email_sign_in_page.dart';
import 'package:madways/app/sign_in/sign_in_manager.dart';
import 'package:madways/app/sign_in/sign_in_button.dart';
import 'package:madways/app/sign_in/social_signin_button.dart';
import 'package:madways/common_widgets/show_exception_alert_dialog.dart';
import 'package:madways/services/auth.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key, @required this.manager, @required this.isLoading})
      : super(key: key);
  final SignInManager manager;
  final bool isLoading;

  static Widget create(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return ChangeNotifierProvider<ValueNotifier<bool>>(
      create: (_) => ValueNotifier<bool>(false),
      child: Consumer<ValueNotifier<bool>>(
        builder: (_, isLoading, __) => Provider<SignInManager>(
          create: (_) => SignInManager(auth, isLoading),
          child: Consumer<SignInManager>(
            builder: (_, manager, __) => SignInPage(
              manager: manager,
              isLoading: isLoading.value,
            ),
          ),
        ),
      ),
    );
  }

  void _showSignInError(BuildContext context, Exception e) {
    if (e is FirebaseException && e.code == "ERROR_ABORTED_BY_USER") {
      return;
    }
    showExceptionAlertDialog(context, title: 'Sign in Failed', exception: e);
  }

  Future<void> _signInAnonymously(BuildContext context) async {
    //final bloc = Provider.of<SignInManager>(context, listen: false);
    try {
      //setState(() => _isLoading = true);
      await manager.signInAnonymously();
    } on Exception catch (e) {
      _showSignInError(context, e);
    }
  }

  Future<void> _signInWithGoogle(BuildContext context) async {
    //final bloc = Provider.of<SignInManager>(context, listen: false);
    try {
      await manager.signInWithGoogle();
    } on Exception catch (e) {
      _showSignInError(context, e);
    }
  }

  // Future<void> _signInWithFacebook(BuildContext context) async {
  //   //final bloc = Provider.of<SignInManager>(context, listen: false);
  //   try {
  //     await manager.signInWithFacebook();
  //   } on Exception catch (e) {
  //     _showSignInError(context, e);
  //   }
  // }

  void _signInWithEmail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => EmailSignInPage(),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //final isLoading = Provider.of<ValueNotifier<bool>>(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("madWays"),
        centerTitle: true,
        elevation: 4.0,
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    //Undescore means private
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            child: _buildHeader(),
          ),
          SocialSignInButton(
              assetsName: 'images/google-logo.png',
              text: 'Sign in with Google',
              color: Colors.white,
              textColor: Colors.black87,
              onPressed: isLoading ? null : () => _signInWithGoogle(context)),
          SizedBox(
            height: 8.0,
          ),
          Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
          // SocialSignInButton(
          //   assetsName: 'images/facebook-logo.png',
          //   text: 'Sign in with Facebook',
          //   color: Color(0xFF334D92),
          //   textColor: Colors.white,
          //   onPressed: isLoading ? null : () => _signInWithFacebook(context),
          // ),
          // SizedBox(
          //   height: 8.0,
          // ),
          SignInButton(
              text: 'Sign in with Email',
              color: Colors.green,
              textColor: Colors.white,
              onPressed: isLoading ? null : () => _signInWithEmail(context)),
          SizedBox(
            height: 8.0,
          ),

          SizedBox(
            height: 8.0,
          ),
          // SignInButton(
          //     text: 'Go Anonymous',
          //     color: Colors.yellow,
          //     textColor: Colors.black87,
          //     onPressed: isLoading ? null : () => _signInAnonymously(context)),
          // SizedBox(
          //   height: 8.0,
          // ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    if (isLoading) {
      return Center(child: CircularProgressIndicator());
    }
    return Column(
      children: [
        FadeInImage.assetNetwork(
          placeholder: 'madWays',
          height: 200.0,
          image:
              'https://pbs.twimg.com/media/Fpfwwn3aQAE_Yez?format=jpg&name=medium',
        ),
        Text(
          'Sign In',
          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
