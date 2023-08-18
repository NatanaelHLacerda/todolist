import 'package:flutter/material.dart';

class ElevatedButtonCustom extends StatelessWidget {
  const ElevatedButtonCustom(
      {super.key,
      this.borderRadius = 20,
      required this.child,
      required this.onPressed,});

  final double borderRadius;

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        )),
      ),
    );
  }
}
