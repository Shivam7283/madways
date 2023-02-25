import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:madways/app/sign_in/email_sign_in_bloc.dart';
import 'package:madways/common_widgets/form_submit_button.dart';
import 'package:madways/common_widgets/show_exception_alert_dialog.dart';
import 'package:madways/services/auth.dart';
import 'email_sign_in_model.dart';

class EmailSignInFormBlocBased extends StatefulWidget {
  EmailSignInFormBlocBased({@required this.bloc});
  final EmailSignInBloc bloc;

  static Widget create(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return Provider(
      create: (_) => EmailSignInBloc(auth),
      child: Consumer<EmailSignInBloc>(
        builder: (_, bloc, __) => EmailSignInFormBlocBased(bloc: bloc),
      ),
      dispose: (_, bloc) => bloc.dispose(),
    );
  }

  @override
  _EmailSignInFormBlocBasedState createState() =>
      _EmailSignInFormBlocBasedState();
}

class _EmailSignInFormBlocBasedState extends State<EmailSignInFormBlocBased> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

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
      await widget.bloc.submit();
      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      showExceptionAlertDialog(
        context,
        title: 'Sign in fail',
        exception: e,
      );
    }
  }

  // void _emailEditingComplete(EmailSignInModel model) {
  //   // final newFocus = model.emilValidator.isValid(model.email)
  //   //     ? _passwordFocusNode
  //   //     : _emailFocusNode;
  //   FocusScope.of(context).requestFocus(newFocus);
  // }

  void _toogleFormType() {
    widget.bloc.toogleFormType();
    _emailController.clear();
    _passController.clear();
  }

  List<Widget> _buildChildren(EmailSignInModel model) {
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
      _buildEmailTextField(model),
      SizedBox(
        height: 8.0,
      ),
      _buildPasswordTextField(model),
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
    ];
  }

  TextField _buildPasswordTextField(EmailSignInModel model) {
    return TextField(
      controller: _passController,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: '**********',
          errorText: model.passwordErrorText),
      obscureText: true,
      textInputAction: TextInputAction.done,
      focusNode: _passwordFocusNode,
      onEditingComplete: _submit,
      onChanged: widget.bloc.updatePassword,
      enabled: model.isLoading == false,
    );
  }

  TextField _buildEmailTextField(EmailSignInModel model) {
    return TextField(
      controller: _emailController,
      decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'abc123@ms.com',
          errorText: model.emailErrorText),
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      focusNode: _emailFocusNode,
      onChanged: widget.bloc.updateEmail,
      enabled: model.isLoading == false,
      //onEditingComplete: () => _emailEditingComplete(model),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EmailSignInModel>(
        stream: widget.bloc.modelStream,
        initialData: EmailSignInModel(),
        builder: (context, snapshot) {
          final EmailSignInModel model = snapshot.data;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: _buildChildren(model),
            ),
          );
        });
  }
}
