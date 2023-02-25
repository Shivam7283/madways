import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:madways/app/sign_in/reset_password.dart';
import 'package:provider/provider.dart';
import 'package:madways/app/sign_in/email_sign_in_change_model.dart';
import 'package:madways/common_widgets/form_submit_button.dart';
import 'package:madways/common_widgets/show_exception_alert_dialog.dart';
import 'package:madways/services/auth.dart';

class EmailSignInFormChangeNotifier extends StatefulWidget {
  EmailSignInFormChangeNotifier({@required this.model});
  final EmailSignInChangeModel model;

  static Widget create(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return ChangeNotifierProvider<EmailSignInChangeModel>(
      create: (_) => EmailSignInChangeModel(auth: auth),
      child: Consumer<EmailSignInChangeModel>(
        builder: (_, model, __) => EmailSignInFormChangeNotifier(
          model: model,
        ),
      ),
    );
  }

  @override
  _EmailSignInFormChangeNotifierState createState() =>
      _EmailSignInFormChangeNotifierState();
}

class _EmailSignInFormChangeNotifierState
    extends State<EmailSignInFormChangeNotifier> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  EmailSignInChangeModel get model => widget.model;

  // String get _email => _emailController.text;
  // String get _pass => _passController.text;
  // EmailSigInFormType _formType = EmailSigInFormType.signIn;
  // bool _submitted = false;
  // bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    try {
      await model.submit();
      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      showExceptionAlertDialog(
        context,
        title: 'Sign in fail',
        exception: e,
      );
    }
  }

  void _emailEditingComplete() {
    final newFocus = model.emilValidator.isValid(model.email)
        ? _passwordFocusNode
        : _emailFocusNode;
    FocusScope.of(context).requestFocus(newFocus);
  }

  void _toogleFormType() {
    model.toogleFormType();
    _emailController.clear();
    _passController.clear();
  }

  List<Widget> _buildChildren() {
    // final primaryText = model.formType == EmailSigInFormType.signIn
    //     ? 'Sign In'
    //     : 'Create an Account';
    //
    // final secoundaryText = model.formType == EmailSigInFormType.signIn
    //     ? 'Need an account? Register'
    //     : 'Already have an account? Login';
    //
    // bool submitEnable = model.emilValidator.isValid(model.email) &&
    //     model.passValidator.isValid(model.password) &&
    //     !model.isLoading;

    return [
      _buildEmailTextField(),
      SizedBox(
        height: 8.0,
      ),
      _buildPasswordTextField(),
      SizedBox(
        height: 8.0,
      ),
      FormSubmitButton(
        text: model.primaryButtonText,
        onPressed: model.canSubmit ? _submit : null,
      ),
      SizedBox(
        height: 8.0,
      ),
      FlatButton(
        onPressed: !model.isLoading ? _toogleFormType : null,
        child: Text(model.secoundaryButtonText),
      ),
      SizedBox(
        height: 8.0,
      ),
      FlatButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (context) => ForgotPassword(),
              fullscreenDialog: true,
            ),
          );
        },
        child: Text('Fogot Password? Reset Password'),
      ),
    ];
  }

  TextField _buildPasswordTextField() {
    return TextField(
      controller: _passController,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: '**********',
          errorText: model.passwordErrorText,
          icon: Icon(Icons.password_outlined)),
      obscureText: true,
      textInputAction: TextInputAction.done,
      focusNode: _passwordFocusNode,
      onEditingComplete: _submit,
      onChanged: model.updatePassword,
      enabled: model.isLoading == false,
    );
  }

  TextField _buildEmailTextField() {
    return TextField(
      controller: _emailController,
      decoration: InputDecoration(
          labelText: 'Email',
          icon: Icon(Icons.email_outlined),
          hintText: 'abc123@ms.com',
          errorText: model.emailErrorText),
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      focusNode: _emailFocusNode,
      onChanged: model.updateEmail,
      enabled: model.isLoading == false,
      onEditingComplete: () => _emailEditingComplete(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }
}
