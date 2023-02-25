abstract class StringValidators {
  bool isValid(String value);
}

class NonEmptyValidator implements StringValidators {
  @override
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}

class EmailAndPasswordValidator {
  final StringValidators emilValidator = NonEmptyValidator();
  final StringValidators passValidator = NonEmptyValidator();
  final String invalidEmailErrorText = 'Email can\'t be empty';
  final String invalidPassErrorText = 'Password can\'t be empty';
}
