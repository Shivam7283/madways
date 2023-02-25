import 'package:flutter/material.dart';
import 'package:madways/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required String assetsName,
    @required String text,
    @required Color color,
    @required Color textColor,
    @required VoidCallback onPressed,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                assetsName,
                height: 50.0,
              ),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 15.0),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset(
                  assetsName,
                  height: 50.0,
                ),
              ),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
