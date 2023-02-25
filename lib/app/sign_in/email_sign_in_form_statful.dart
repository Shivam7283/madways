import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:madways/app/sign_in/validators.dart';
import 'package:madways/common_widgets/form_submit_button.dart';
import 'package:madways/common_widgets/show_exception_alert_dialog.dart';
import 'package:madways/services/auth.dart';

import 'email_sign_in_model.dart';

class EmailSignInFormStateful extends StatefulWidget
    with EmailAndPasswordValidator {
  @override
  _EmailSignInFormStatefulState createState() =>
      _EmailSignInFormStatefulState();
}

class _EmailSignInFormStatefulState extends State<EmailSignInFormStateful> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  String get _email => _emailController.text;
  String get _pass => _passController.text;
  EmailSigInFormType _formType = EmailSigInFormType.signIn;
  bool _submitted = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _submitted = true;
      _isLoading = true;
    });
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      if (_formType == EmailSigInFormType.signIn) {
        await auth.signInWithEmailAndPassword(_email, _pass);
      } else {
        await auth.createUserWithEmailAndPassword(_email, _pass);
      }
      Navigator.of(context).pop();
    } on Exception catch (e) {
      showExceptionAlertDialog(
        context,
        title: 'Sign in fail',
        exception: e,
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _emailEditingComplete() {
    final newFocus = widget.emilValidator.isValid(_email)
        ? _passwordFocusNode
        : _emailFocusNode;
    FocusScope.of(context).requestFocus(newFocus);
  }

  void _toogleFormType() {
    setState(() {
      _submitted = false;
      _formType = _formType == EmailSigInFormType.signIn
          ? EmailSigInFormType.register
          : EmailSigInFormType.signIn;
    });
    _emailController.clear();
    _passController.clear();
  }

  List<Widget> _buildChildren() {
    final primaryText = _formType == EmailSigInFormType.signIn
        ? 'Sign In'
        : 'Create an Account';

    final secoundaryText = _formType == EmailSigInFormType.signIn
        ? 'Need an account? Register'
        : 'Already have an account? Login';

    bool submitEnable = widget.emilValidator.isValid(_email) &&
        widget.passValidator.isValid(_pass) &&
        !_isLoading;

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
        text: primaryText,
        onPressed: submitEnable ? _submit : null,
      ),
      SizedBox(
        height: 8.0,
      ),
      FlatButton(
        onPressed: !_isLoading ? _toogleFormType : null,
        child: Text(secoundaryText),
      ),
    ];
  }

  TextField _buildPasswordTextField() {
    bool showErrorTextPass = _submitted && !widget.passValidator.isValid(_pass);
    return TextField(
      controller: _passController,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: '**********',
          errorText: showErrorTextPass ? widget.invalidPassErrorText : null),
      obscureText: true,
      textInputAction: TextInputAction.done,
      focusNode: _passwordFocusNode,
      onEditingComplete: _submit,
      onChanged: (password) => updateState(),
      enabled: _isLoading == false,
    );
  }

  TextField _buildEmailTextField() {
    bool showErrorTextEmail =
        _submitted && !widget.emilValidator.isValid(_email);
    return TextField(
      controller: _emailController,
      decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'abc123@ms.com',
          errorText: showErrorTextEmail ? widget.invalidEmailErrorText : null),
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      focusNode: _emailFocusNode,
      onChanged: (email) => updateState(),
      enabled: _isLoading == false,
      onEditingComplete: _emailEditingComplete,
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

  void updateState() {
    setState(() {});
  }
}
