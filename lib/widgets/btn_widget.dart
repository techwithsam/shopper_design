import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final double? height;
  final void Function()? onPressed;
  const ButtonWidget(
      {Key? key, required this.text, this.onPressed, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: 0,
      minWidth: double.infinity,
      height: height ?? 65,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Colors.black,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
