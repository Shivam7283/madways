import 'package:flutter/material.dart';
import 'package:madways/common_widgets/custom_raised_button.dart';

class FormSubmitButton extends CustomRaisedButton {
  FormSubmitButton({
    @required String text,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          color: Colors.indigo,
          borderRad: 10.0,
          onPressed: onPressed,
        );
}
