import 'package:flutter/foundation.dart';
import 'package:madways/app/sign_in/validators.dart';
import 'package:madways/services/auth.dart';
import 'email_sign_in_model.dart';

class EmailSignInChangeModel with EmailAndPasswordValidator, ChangeNotifier {
  EmailSignInChangeModel(
      {@required this.auth,
      this.email = '',
      this.password = '',
      this.formType = EmailSigInFormType.signIn,
      this.isLoading = false,
      this.submitted = false});
  final AuthBase auth;
  String email;
  String password;
  EmailSigInFormType formType;
  bool isLoading;
  bool submitted;

  Future<void> submit() async {
    updateWith(submitted: true, isLoading: false);
    try {
      if (formType == EmailSigInFormType.signIn) {
        await auth.signInWithEmailAndPassword(email, password);
      } else {
        await auth.createUserWithEmailAndPassword(email, password);
      }
    } catch (e) {
      updateWith(isLoading: false);
      rethrow;
    }
  }

  String get primaryButtonText {
    return formType == EmailSigInFormType.signIn
        ? 'Sign In'
        : 'Create an Account';
  }

  String get secoundaryButtonText {
    return formType == EmailSigInFormType.signIn
        ? 'Need an account? Register'
        : 'Already have an account? Login';
  }

  bool get canSubmit {
    return emilValidator.isValid(email) &&
        passValidator.isValid(password) &&
        !isLoading;
  }

  String get passwordErrorText {
    bool showErrorText = submitted && !passValidator.isValid(password);
    return showErrorText ? invalidPassErrorText : null;
  }

  String get emailErrorText {
    bool showErrorTextEmail = submitted && !emilValidator.isValid(email);
    return showErrorTextEmail ? invalidEmailErrorText : null;
  }

  void toogleFormType() {
    final formType = this.formType == EmailSigInFormType.signIn
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
    this.email = email ?? this.email;
    this.password = password ?? this.password;
    this.formType = formType ?? this.formType;
    this.isLoading = isLoading ?? this.isLoading;
    this.submitted = submitted ?? this.submitted;
    notifyListeners();
  }
}
