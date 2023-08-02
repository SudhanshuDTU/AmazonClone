import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final void Function()? onPressed;

  const CustomButton({super.key, required this.buttonName, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        buttonName,
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(30, 50), backgroundColor: Colors.pink),
    );
  }
}
