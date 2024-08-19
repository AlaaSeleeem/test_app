import 'package:flutter/material.dart';
import 'package:my_network_app/shared/Themes/Texts.dart';
import 'package:my_network_app/shared/Themes/colors.dart';

class ActionButton extends StatelessWidget {
  ActionButton(
      {super.key,
      required this.title,
      required this.action,
      this.buttonColor,
      this.buttonWidth,
      this.buttonHight,
      this.titleStyle, required Null Function() onPressed, required String text});
  String title;
  Color? buttonColor;
  Function() action;
  double? buttonWidth;
  double? buttonHight;
  TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHight,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: action,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor ?? orange),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          title,
          style: titleStyle,
        ),
      ),
    );
  }
}

class ActionButtonWithIcon extends StatelessWidget {
  ActionButtonWithIcon(
      {super.key,
      required this.title,
      required this.icon,
      required this.action,
      this.buttonColor});
  String title;
  Color? buttonColor;
  IconData icon;
  Function() action;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: action,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor ?? orange),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      icon: Icon(
        icon,
        color: white,
      ),
      label: Text(
        title,
        style: h4,
      ),
    );
  }
}
