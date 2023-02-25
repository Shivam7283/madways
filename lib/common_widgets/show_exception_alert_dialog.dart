import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:madways/common_widgets/show_alert_dialog.dart';

Future<void> showExceptionAlertDialog(BuildContext context,
        {@required String title, @required Exception exception}) =>
    showAlertDialog(context,
        title: title, content: _message(exception), defaultActionText: 'ok');
String _message(Exception e) {
  if (e is FirebaseException) {
    return e.message;
  }
  return e.toString();
}
