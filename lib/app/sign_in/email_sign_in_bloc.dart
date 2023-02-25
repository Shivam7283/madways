import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:madways/app/sign_in/email_sign_in_model.dart';
import 'package:madways/services/auth.dart';

class EmailSignInBloc {
  EmailSignInBloc(@required this.auth);
  final AuthBase auth;

  final _modelSubject =
      BehaviorSubject<EmailSignInModel>.seeded(EmailSignInModel());
  // final StreamController<EmailSignInModel> _modelController =
  //     StreamController<EmailSignInModel>();
  Stream<EmailSignInModel> get modelStream => _modelSubject.stream;
  EmailSignInModel get _model => _modelSubject.value;

  void dispose() {
    _modelSubject.close();
  }

  Future<void> submit() async {
    updateWith(submitted: true, isLoading: false);
    try {
      if (_model.formType == EmailSigInFormType.signIn) {
        await auth.signInWithEmailAndPassword(_model.email, _model.password);
      } else {
        await auth.createUserWithEmailAndPassword(
            _model.email, _model.password);
      }
    } catch (e) {
      updateWith(isLoading: false);
      rethrow;
    }
  }

  void toogleFormType() {
    final formType = _model.formType == EmailSigInFormType.signIn
        ? EmailSigInFormType.register
        : EmailSigInFormType.signIn;
    updateWith(
      email: '',
      password: '',
      formType: formType,
      isLoading: false,
      submitted: false,
    );
  }

  void updateEmail(String email) => updateWith(email: email);

  void updatePassword(String password) => updateWith(password: password);

  void updateWith(
      {String email,
      String password,
      EmailSigInFormType formType,
      bool isLoading,
      bool submitted}) {
    //update model
    _modelSubject.value = _model.copyWith(
      email: email,
      password: password,
      formType: formType,
      isLoading: isLoading,
      submitted: submitted,
    );
    //add updated model to _modelController
    //_modelController.add(_model);
  }
}
