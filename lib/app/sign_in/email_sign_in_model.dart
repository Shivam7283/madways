import 'package:madways/app/sign_in/validators.dart';

enum EmailSigInFormType { signIn, register }

class EmailSignInModel with EmailAndPasswordValidator {
  EmailSignInModel(
      {this.email = '',
      this.password = '',
      this.formType = EmailSigInFormType.signIn,
      this.isLoading = false,
      this.submitted = false});
  final String email;
  final String password;
  final EmailSigInFormType formType;
  final bool isLoading;
  final bool submitted;

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

  EmailSignInModel copyWith(
      {String email,
      String password,
      EmailSigInFormType formType,
      bool isLoading,
      bool submitted}) {
    return EmailSignInModel(
      email: email ?? this.email,
      password: password ?? this.password,
      formType: formType ?? this.formType,
      isLoading: isLoading ?? this.isLoading,
      submitted: submitted ?? this.submitted,
    );
  }
}
