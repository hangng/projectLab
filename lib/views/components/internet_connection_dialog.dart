import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final Widget content;
  final String positiveButtonText;
  final String negativeButtonText;
  final Function() onPositiveButtonPressed;
  final Function() onNegativeButtonPressed;

  const CustomDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.positiveButtonText,
    required this.negativeButtonText,
    required this.onPositiveButtonPressed,
    required this.onNegativeButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: content,
      actions: <Widget>[
        TextButton(
          onPressed: onNegativeButtonPressed,
          child: Text(negativeButtonText),
        ),
        TextButton(
          onPressed: onPositiveButtonPressed,
          child: Text(positiveButtonText),
        ),
      ],
    );
  }
}