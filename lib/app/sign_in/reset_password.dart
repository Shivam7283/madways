import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:madways/common_widgets/show_alert_dialog.dart';
import 'package:madways/services/auth.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _emailController;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    super.initState();
  }

  resetLink() async {
    //Sent Password reset link logic
    if (_emailController.text.trim().contains('@') &&
        _emailController.text.trim().contains('.')) {
      await Auth().passwordReset(_emailController.text.trim().toString());
      showAlertDialog(context,
          title: 'Link Arrived',
          content: 'Password Reset Link Sent to you mail',
          defaultActionText: 'ok');
      // scaffoldKey.currentState!.showSnackBar(
      //   ksnackBar(
      //     context,
      //     AuthErrorsHelper.getValue(authError),
      //   ),
      // );
      // print(
      //   {AuthErrorsHelper.getValue(authError)},
      // );
    } else {
      showAlertDialog(context,
          title: 'Sorry Mad..!',
          content: 'Please check mail id you given',
          defaultActionText: 'ok');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Reset Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            bottom: 25.0, left: 25.0, right: 25.0, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              child: Text(
                "enter registered email",
                // textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: _emailController,
              // obscureText: true,
              onChanged: (email) {},
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
              // decoration: kTextFieldDecoration.copyWith(
              //   hintText: "email_hint",
              //   labelText: "email",
              // ),
              decoration: InputDecoration(
                errorMaxLines: 1,
                icon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    // onTap: () async {
                    //   //Sent Password reset link logic
                    //   if (_emailController.text.trim().contains('@') &&
                    //       _emailController.text.trim().contains('.')) {
                    //     AuthErrors authError = await AuthMethods()
                    //         .passwordReset(
                    //             _emailController.text.trim().toString());
                    //
                    //     scaffoldKey.currentState!.showSnackBar(
                    //       ksnackBar(
                    //         context,
                    //         AuthErrorsHelper.getValue(authError),
                    //       ),
                    //     );
                    //     ksnackBar(
                    //       context,
                    //       AuthErrorsHelper.getValue(authError),
                    //     );
                    //   } else {
                    //     ksnackBar(context, 'Email is Not Valid');
                    //   }
                    // },
                    onTap: resetLink,
                    child: Container(
                      child: const Text(
                        "Send Reset Link",
                        style: TextStyle(color: Colors.white),
                      ),
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          color: Colors.blueGrey),
                    ),
                  ),
                ],
                // crossAxisAlignment: CrossAxisAlignment.end,
                // children: <Widget>[
                //   ReusableRoundedButton(
                //     elevation: 5,
                //     child: Text(
                //       string.send_recovery_mail,
                //       style: TextStyle(
                //         // color: kmainColorTeacher,
                //         fontSize: 15,
                //       ),
                //     ),
                //     onPressed: () async {
                //       //Sent Password reset link logic
                //       if (_emailController.text.trim().contains('@') &&
                //           _emailController.text.trim().contains('.')) {
                //         AuthErrors authError = await _authService.passwordReset(
                //             _emailController.text.trim().toString());
                //         scaffoldKey.currentState.showSnackBar(
                //           ksnackBar(
                //             context,
                //             AuthErrorsHelper.getValue(authError),
                //           ),
                //         );
                //         ksnackBar(
                //           context,
                //           AuthErrorsHelper.getValue(authError),
                //         );
                //       } else {
                //         ksnackBar(context, 'Email is Not Valid');
                //       }
                //     },
                //     height: 50,
                //   ),
                // ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
